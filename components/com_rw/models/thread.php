<?php

use Joomla\CMS\MVC\Model\BaseDatabaseModel;

defined('_JEXEC') or die;

class RwModelThread extends BaseDatabaseModel
{
    public function __construct($config = array())
    {
        $this->is_mobile = (bool) JFactory::getApplication()->client->mobile;
        $this->uid = JFactory::getApplication()->input->getString('uid', null);
        $this->date = JFactory::getApplication()->input->getString('date', JDate::getInstance()->format("Y-m-d"));
        parent::__construct($config);
    }

    public function getThread(): array
    {
        $yarasp = BaseDatabaseModel::getInstance('Yarasp', 'RwModel');
        if ($this->uid === null) return array();
        $thread = $yarasp->getRaspThread($this->uid);
        return $this->prepareRasp($thread);
    }

    private function prepareRasp(array $rasp): array
    {
        $result = array();
        if (empty($rasp)) return $result;
        $result['number'] = JText::sprintf('COM_RW_HEAD_THREAD_NUMBER', $rasp['number']);
        $result['date'] = JText::sprintf('COM_RW_HEAD_THREAD_DATE', JDate::getInstance($this->date)->format("d.m.Y"));
        $result['title'] = $rasp['title'];
        $result['carrier'] = $rasp['carrier']['title'];
        $result['stops'] = $rasp['stops'];
        $codes = array();

        foreach ($result['stops'] as $i => $stop) {
            $codes[] =  str_ireplace("s", "", $result['stops'][$i]['station']['code']);
        }
        $info = $this->getStationsInfo($codes);
        $day = JDate::getInstance($this->date)->format("w");
        $itemID = RwHelper::getMenuItemId('station');

        foreach ($result['stops'] as $i => $stop) {
            $short_title = $result['stops'][$i]['station']['short_title'];
            $popular_title = $result['stops'][$i]['station']['popular_title'];
            $title = $result['stops'][$i]['station']['title'];
            $yandex =  str_ireplace("s", "", $result['stops'][$i]['station']['code']);
            if (!$this->is_mobile) {
                if ($popular_title !== '') $title = $popular_title;
            }
            if ($this->is_mobile) {
                if ($short_title != null) $title = $short_title;
            }
            $url = JRoute::_("index.php?option=com_rw&amp;view=station&amp;id={$info[$yandex][0]['id']}&amp;Itemid={$itemID}");
            $result['stops'][$i]['name'] = JHtml::link($url, $title);
            $result['stops'][$i]['zoneID'] = $info[$yandex][0]['zoneID'];
            $result['stops'][$i]['zoneColor'] = ($info[$yandex][0]['zoneID'] % 2) ? '#8F7E0F' : 'black';
            $dat_1 = JDate::getInstance($stop['arrival']);
            $dat_2 = JDate::getInstance($stop['departure']);
            if ($result['stops'][$i]['stop_time'] !== 0) {
                $result['stops'][$i]['arrival'] = $dat_1->format("H.i");
                $result['stops'][$i]['departure'] = $dat_2->format("H.i");
                $check_time = $dat_2;
            }
            else
            {
                $result['stops'][$i]['arrival'] = '-';
                $result['stops'][$i]['departure'] = '-';
                $check_time = '';
            }
            if ($i === 0) {
                $result['stops'][$i]['arrival'] = '';
                $result['stops'][$i]['departure'] = $dat_2->format("H.i");
                $check_time = $dat_2;
            }
            if ($i === count($result['stops'])) {
                $result['stops'][$i]['arrival'] = $dat_1->format("H.i");
                $result['stops'][$i]['departure'] = '';
                $check_time = $dat_1;
            }
            foreach ($info[$yandex] as $item) {
                if ($check_time == '') {
                    $result['stops'][$i]['descs'] = ' ';
                }
                if (!isset($result['stops'][$i]['descs'])) {
                    if ($item['turnstiles'] !== null) {
                        $result['stops'][$i]['descs'] = JText::sprintf('COM_RW_HEAD_THREAD_TURNSTILES');
                        $result['stops'][$i]['class'] = 'desc_worked';
                        continue;
                    }
                    if (!RwHelper::isClub()) {
                        $attribs = array("data-toggle" => "modal", "data-target" => "#modal_desc_ad");
                        $result['stops'][$i]['descs'] = JHtml::link("#", JText::sprintf('COM_RW_MODAL_TITLE_DESCS'), $attribs);
                        $result['stops'][$i]['class'] = '';
                        continue;
                    }
                    if ($item['tppd'] === '1') {
                        $result['stops'][$i]['descs'] = JText::sprintf('COM_RW_HEAD_THREAD_TPPD');
                        $result['stops'][$i]['class'] = 'desc_worked';
                        continue;
                    }
                    if ($item['time_mask'] !== null) {
                        if (substr($item['time_mask'], $day, 1) == '1') {
                            if ($item['time_1'] === null && $item['time_2'] === null) {
                                $result['stops'][$i]['descs'] = JText::sprintf('COM_RW_HEAD_THREAD_NO_DESC');
                                $result['stops'][$i]['class'] = 'desc_not_worked';
                                continue;
                            } else {
                                $open = JDate::getInstance($dat_1->format("Y-m-d ") . $item['time_1']);
                                $close = JDate::getInstance($dat_2->format("Y-m-d ") . $item['time_2']);
                                if ($open < $check_time && $close > $check_time) {
                                    $result['stops'][$i]['descs'] = JText::sprintf('COM_RW_HEAD_THREAD_DESC_IS_WORKED');
                                    $result['stops'][$i]['class'] = 'desc_worked';
                                    continue;
                                }
                            }
                        }
                        continue;
                    }
                }
            }
        }
        return $result;
    }

    private function getStationsInfo(array $codes): array
    {
        if (empty($codes)) return array();
        $codes = implode(", ", $codes);
        if ($codes === '') return array();
        $db =& $this->getDbo();
        $query = $db->getQuery(true);
        $query
            ->select("i.`id`, i.`tppd`, i.`turnstiles`, i.`yandex`, i.station")
            ->select("d.time_1, d.time_2, d.time_mask")
            ->select("dir.zoneID")
            ->from("`#__rw_stations_info` i")
            ->leftjoin("`#__rw_desc` d on d.stationID = i.id")
            ->leftJoin("`#__rw_station_directions` dir on dir.stationID = i.id")
            ->where("i.`yandex` in ({$codes})");
        $items = $db->setQuery($query)->loadAssocList();
        $result = array();
        foreach ($items as $item) {
            if (!isset($result[$item['yandex']])) $result[$item['yandex']] = array();
            $result[$item['yandex']][] = $item;
        }
        return $result;
    }

    private $is_mobile, $uid, $date;
}
