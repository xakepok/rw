<?php

use Joomla\CMS\MVC\Model\BaseDatabaseModel;

defined('_JEXEC') or die;

class RwModelThread extends BaseDatabaseModel
{
    public function __construct($config = array())
    {
        $this->is_mobile = (bool) JFactory::getApplication()->client->mobile;
        $this->uid = JFactory::getApplication()->input->getString('uid', null);
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
        $config = JFactory::getConfig();
        $tz = $config->get('offset');
        $itemID = RwHelper::getMenuItemId('station');
        $result['number'] = $rasp['number'];
        $result['title'] = $rasp['title'];
        $result['stops'] = $rasp['stops'];
        foreach ($result['stops'] as $i => $stop) {
            if ($result['stops'][$i]['arrival'] != null && $result['stops'][$i]['stop_time'] != null && $result['stops'][$i]['stop_time'] !== 0) {
                $dat_1 = JDate::getInstance($stop['arrival']);
                $dat_1->setTimezone($tz);
                $result['stops'][$i]['arrival'] = ($i == 0) ? '' : $dat_1->format("H.i");
            }
            if ($result['stops'][$i]['departure'] != null && $result['stops'][$i]['stop_time'] != null && $result['stops'][$i]['stop_time'] !== 0) {
                $dat_2 = JDate::getInstance($stop['departure']);
                $dat_2->setTimezone($tz);
                $result['stops'][$i]['departure'] = ($i != count($result['stops'])) ? $dat_2->format("H.i") : '';
                if ($i != count($result['stops']) && $result['stops'][$i]['stop_time'] == 0) $result['stops'][$i]['departure'] = '-';
            }
        }
        return $result;
    }

    private $is_mobile, $uid;
}
