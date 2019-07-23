<?php
use Joomla\CMS\MVC\Model\ListModel;
use Joomla\CMS\MVC\Model\BaseDatabaseModel;

defined('_JEXEC') or die;

class RwModelStations extends ListModel
{
    public function __construct($config = array())
    {
        $this->directionID = JFactory::getApplication()->input->getInt('directionID', 1);
        parent::__construct($config);
    }

    protected function _getListQuery()
    {
        $db =& $this->getDbo();
        $query = $db->getQuery(true);
        $query
            ->select("*")
            ->from("`#__rw_direction_stations`")
            ->where("`directionID` = {$this->directionID}");

        /* Сортировка */
        $orderCol  = $this->state->get('list.ordering');
        $orderDirn = $this->state->get('list.direction');
        $query->order($db->escape($orderCol . ' ' . $orderDirn));

        return $query;
    }

    public function getDirection(): string
    {
        $table = $this->getTable('Directions', 'TableRw');
        $table->load($this->directionID);
        return $table->title;
    }

    public function getItems()
    {
        $items = parent::getItems();
        $result = array();
        $ids = array();
        $itemID = RwHelper::getMenuItemId('station');
        foreach ($items as $item) {
            $arr = array();
            $arr['id'] = $item->stationID;
            if (!in_array($item->stationID, $ids) && $item->turnstiles === null) $ids[] = $item->stationID;
            $url = JRoute::_("index.php?view=station&amp;id={$item->stationID}&amp;Itemid={$itemID}");
            $arr['station'] = JHtml::link($url, $item->station);
            $arr['indexID'] = $item->indexID;
            $arr['yandex'] = $item->yandex;
            $arr['zoneID'] = $item->zoneID;
            $arr['level'] = $item->level;
            $arr['distance'] = JText::sprintf('COM_RW_TITLE_DISTANCE_KM', $item->distance);
            $arr['turnstiles'] = $item->turnstiles ?? JText::sprintf('COM_RW_NO_TURNSTILES');
            $result["s".$item->yandex] = $arr;
        }
        $descs = $this->getDescs($ids ?? array());
        foreach ($result as $yandex => $item) {
            foreach ($descs as $yad => $desc) {
                if ($yad == $yandex) $result[$yandex]['descs'] = $desc;
            }
        }
        return $result;
    }

    public function getStationsForAjax()
    {
        $result = array();
        $db =& $this->getDbo();
        $query = $db->getQuery(true);
        $query
            ->select("id, station, direction")
            ->from("`#__rw_stations_info`")
            ->where("directionID is not null")
            ->order("direction");
        $items = $db->setQuery($query)->loadAssocList() ?? array();
        if (count($items) < 1) return $result;
        foreach ($items as $item) {
            $arr = array();
            $arr['value'] = $item['id'];
            $arr['text'] = JText::sprintf("COM_RW_AJAX_SEARCH_STATION_DIRECTION", $item['station'], $item['direction']);
            $result[] = $arr;
        }
        return $result;
    }

    private function getDescs(array $ids = array()): array
    {
        if (empty($ids) || !RwHelper::isClub()) return array();
        $ids = implode(", ", $ids);
        $db =& $this->getDbo();
        $query = $db->getQuery(true);
        $query
            ->select("i.yandex, i.turnstiles, i.tppd")
            ->select("d.time_1, d.time_2, d.time_mask")
            ->from("`#__rw_stations_info` i")
            ->leftJoin("`#__rw_desc` d on d.stationID = i.id")
            ->where("i.id IN ({$ids})");
        $items = $db->setQuery($query)->loadAssocList() ?? array();
        if (empty($items) || (count($items) === 0 && $items[0]['time_mask'] === null)) return array();
        $result = array();
        foreach ($items as $item) {
            $arr = array();
            $arr['time_mask'] = ($item['time_mask'] !== null) ? JText::sprintf("COM_RW_DESC_TIME_MASK_{$item['time_mask']}") : JText::sprintf('COM_RW_DESC_UNKNOWN');
            $dat_1 = JDate::getInstance(date("Y-m-d ").$item['time_1']);
            $dat_2 = JDate::getInstance(date("Y-m-d ").$item['time_2']);
            $arr['time'] = sprintf("%s - %s", $dat_1->format("H:i"), $dat_2->format("H:i"));
            if ($item['time_1'] == '00:00:00' && $item['time_2'] == '23:59:59') {
                $arr['time'] = JText::sprintf('COM_RW_DESC_TIME_MASK_EVERYDAY');
                $arr['everyday'] = true;
            }
            $arr['no_desc'] = ($item['time_1'] === null && $item['time_2'] === null && $item['tppd'] == '0') ? true : false;
            switch ($item['tppd']) {
                case '0': {
                    $arr['tppd'] = false;
                    break;
                }
                case '1': {
                    $arr['tppd'] = true;
                    break;
                }
                default: {
                    $arr['tppd'] = null;
                }
            }
            $arr['now'] = (($item['time_1'] !== null && $item['time_2'] !== null && $arr['tppd'] === false)) ? $this->isWorkedNow($item['time_mask'], $dat_1, $dat_2) : false;
            $result["s".$item['yandex']][] = $arr;
        }
        return $result ?? array();
    }

    private function isWorkedNow(string $mask, JDate $time_1, JDate $time_2): bool
    {
        $result = false;
        $day = JDate::getInstance();
        $dayOfWeek = (int) $day->format("w");
        if (substr($mask, $dayOfWeek, 1) === '1') {
            $open = $time_1->getTimestamp();
            $close = $time_2->getTimestamp();
            $now = $day->getTimestamp();
            if ($open <= $now && $now <= $close) $result = true;
        }
        return $result;
    }

    public function getRasp()
    {
        $yarasp = BaseDatabaseModel::getInstance('Yarasp', 'RwModel');
        $rasp = $yarasp->getRaspBetweenStations(2000006, 9600821);
        $result = array();
        foreach ($rasp['rasp'] as $uid => $thread)
        {
            foreach ($thread['stops'] as $stop) {
                if (!isset($result['stations'][$stop['station']['code']][$uid])) $result['stations'][$result[$stop['station']['code']][$uid]] = array('arrival' => null, 'departure' => null);
                if ($result['uids'][$uid] == null) $result['uids'][$uid] = $thread['number'];
                if ($stop['arrival'] != null) {
                    $result['stations'][$stop['station']['code']][$uid]['arrival'] = ($stop['arrival'] != $stop['departure']) ? JDate::getInstance($stop['arrival'])->format("H.i") : '-';
                }
                else
                {
                    $result['stations'][$stop['station']['code']][$uid]['arrival'] = null;
                }
                if ($stop['departure'] != null) {
                    $result['stations'][$stop['station']['code']][$uid]['departure'] = ($stop['arrival'] != $stop['departure']) ? JDate::getInstance($stop['departure'])->format("H.i") : '-';
                }
                else
                {
                    $result['stations'][$stop['station']['code']][$uid]['departure'] = null;
                }
            }
        }
        return $result;
    }

    protected function populateState($ordering = 'indexID', $direction = 'asc')
    {
        parent::populateState($ordering, $direction);
    }

    private $directionID;
}
