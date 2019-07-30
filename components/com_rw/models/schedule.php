<?php

use Joomla\CMS\MVC\Model\BaseDatabaseModel;

defined('_JEXEC') or die;

class RwModelSchedule extends BaseDatabaseModel
{
    public function __construct($config = array())
    {
        $this->is_mobile = (bool) JFactory::getApplication()->client->mobile;
        $this->from = JFactory::getApplication()->input->getInt('from', 0);
        $this->to = JFactory::getApplication()->input->getInt('to', 0);
        $this->date = JFactory::getApplication()->input->getString('date', JDate::getInstance()->format("Y-m-d"));
        parent::__construct($config);
    }

    public function getSchedule(): array
    {
        $yarasp = BaseDatabaseModel::getInstance('Yarasp', 'RwModel');
        if ($this->from === 0 || $this->to === 0) return array();
        $stations = $this->getStationsInfo(array($this->from, $this->to));
        $schedule = $yarasp->getRaspBetweenStations($stations[$this->from]['yandex'], $stations[$this->to]['yandex'], $this->date);
        return $this->prepareRasp($schedule, $stations);
    }

    public function getFrom(): int
    {
        return $this->from;
    }

    public function getTo(): int
    {
        return $this->to;
    }

    public function getDate(): string
    {
        return $this->date;
    }

    private function prepareRasp(array $rasp, array $stations): array
    {
        $result = array('threads' => array(), 'types' => array(), 'stations' => $stations);
        if (empty($rasp)) return $result;
        $itemID = RwHelper::getMenuItemId('thread');

        foreach ($rasp['threads'] as $thread) {
            $arr = array();
            $dat_1 = JDate::getInstance($thread['arrival']." +3 hour");
            $dat_2 = JDate::getInstance($thread['departure']." +3 hour");
            $duration = date_diff(new DateTime($dat_1), new DateTime($dat_2));
            $arr['departure'] = $dat_2->format("H.i");
            $arr['arrival'] = $dat_1->format("H.i");
            $arr['number'] = $thread['thread']['number'];
            $arr['stops'] = $thread['stops'];
            if (new DateTime() > new DateTime($dat_2)) {
                $arr['hide'] = true;
            }
            if ($duration->h > 0) {
                $arr['duration'] = JText::sprintf('COM_RW_SCHEDULE_DURATION_HI', $duration->h, $duration->i);
            }
            else {
                $arr['duration'] = JText::sprintf('COM_RW_SCHEDULE_DURATION_I', $duration->i);
            }
            $title = (!$this->is_mobile) ? $thread['thread']['title'] : $thread['thread']['short_title'];
            $arr['title'] = JHtml::link("index.php?option=com_rw&amp;view=thread&amp;uid={$thread['thread']['uid']}&amp;date={$thread['start_date']}&amp;Itemid={$itemID}", $title);
            $type = $thread['thread']['transport_subtype']['title'];
            if (!isset($result['types'][$type]['cnt'])) $result['types'][$type]['cnt'] = 0;
            $result['types'][$type]['cnt']++;
            $result['types'][$type]['code'] = $thread['thread']['transport_subtype']['code'];
            $arr['code'] = $thread['thread']['transport_subtype']['code'];
            if ($thread['thread']['transport_subtype']['code'] != 'suburban') {
                $arr['type'] = $thread['thread']['transport_subtype']['title'];
                $arr['color'] = $thread['thread']['transport_subtype']['color'];
            }
            if (!empty($thread['arrival_platform'])) $arr['arrival_platform'] = $thread['arrival_platform'];
            if (!empty($thread['departure_platform'])) $arr['departure_platform'] = $thread['departure_platform'];
            $result['threads'][] = $arr;
        }
        return $result;
    }

    /**
     * Возвращает подробную информацию о станциях
     * @param array $codes
     * @return array
     * @since 1.0.2.7
     */
    private function getStationsInfo(array $codes): array
    {
        if (empty($codes)) return array();
        $codes = implode(", ", $codes);
        if ($codes === '') return array();
        $db =& $this->getDbo();
        $query = $db->getQuery(true);
        $query
            ->select("distinct i.`id`, i.`tppd`, i.`turnstiles`, i.`yandex`, i.station")
            ->select("d.time_1, d.time_2, d.time_mask")
            ->select("dir.zoneID")
            ->from("`#__rw_stations_info` i")
            ->leftjoin("`#__rw_desc` d on d.stationID = i.id")
            ->leftJoin("`#__rw_station_directions` dir on dir.stationID = i.id")
            ->where("i.`id` in ({$codes})");
        $items = $db->setQuery($query)->loadAssocList();
        $result = array();
        foreach ($items as $item) {
            if (!isset($result[$item['id']])) $result[$item['id']] = $item;
        }
        return $result;
    }

    private $from, $to, $date, $is_mobile;
}
