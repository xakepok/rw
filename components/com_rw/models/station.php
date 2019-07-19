<?php

use Joomla\CMS\MVC\Model\BaseDatabaseModel;
use Joomla\CMS\MVC\Model\ItemModel;

defined('_JEXEC') or die;

class RwModelStation extends ItemModel
{
    public function __construct($config = array())
    {
        $this->is_mobile = (bool) JFactory::getApplication()->client->mobile;
        parent::__construct($config);
    }

    /**
     * @throws
     * @return object
     * @since 1.0.0.6
     */
    public function getStation(): object
    {
        $id = JFactory::getApplication()->input->getInt('id', 1);
        $date = JFactory::getApplication()->input->getString('date', JDate::getInstance()->format('Y-m-d'));
        $table = $this->getTable();
        $table->load($id);
        $table->has_turnstiles = ($table->turnstiles != null) ? true : false;
        $table->turnstiles = mb_strtolower($table->turnstiles ?? JText::sprintf('COM_RW_NO_TURNSTILES'));
        if ($table->yandex !== null) {
            $direction = JFactory::getApplication()->input->getString('direction', $table->schedule);
            $yarasp = BaseDatabaseModel::getInstance('Yarasp', 'RwModel');
            $rasp = $yarasp->getRaspByStation($table->yandex ?? 2000000, $direction, $date);
            $table->rasp['schedule'] = $this->prepareRasp($rasp['schedule']);
            $table->rasp['directions'] = $rasp['directions'];
            $table->rasp['direction'] = $direction;
            $table->rasp['date'] = $date;
            $itemID = RwHelper::getMenuItemId('station');
            foreach ($table->rasp['directions'] as $i => $dir) {
                $code = urlencode($dir['code']);
                $table->rasp['directions'][$i]['url'] = JRoute::_("index.php?option=com_rw&amp;view=station&amp;id={$id}&amp;direction={$code}&amp;date={$date}&amp;Itemid={$itemID}");
            }
        }
        return $table;
    }

    private function prepareRasp(array $rasp): array
    {
        $result = array();
        if (empty($rasp)) return $result;
        $config = JFactory::getConfig();
        $tz = $config->get('offset');
        $itemID = RwHelper::getMenuItemId('thread');
        foreach ($rasp as $item) {
            $arr = array();
            $url = "index.php?option=com_rw&amp;view=thread&amp;uid={$item['thread']['uid']}";
            if ($itemID > 0) $url .= "&amp;Itemid={$itemID}";
            $url = JRoute::_($url);
            if ($item['arrival'] !== null) {
                $dat_1 = JDate::getInstance($item['arrival']." +3 hour");
                $dat_1->setTimezone($tz);
                $arr['arrival'] = $dat_1->format("H.i");
            }
            if ($item['departure'] !== null) {
                $dat_2 = JDate::getInstance($item['departure']." +3 hour");
                $dat_2->setTimezone($tz);
                $arr['departure'] = $dat_2->format("H.i");
            }
            $arr['number'] = $item['thread']['number'];
            $arr['route'] = JHtml::link($url, (!$this->is_mobile) ? $item['thread']['title'] : $item['thread']['short_title']);
            $arr['stops'] = $item['stops'];
            $arr['terminal'] = $item['terminal'];
            $arr['platform'] = $item['platform'];
            $arr['color'] = $item['thread']['transport_subtype']['color'];
            if ($item['thread']['transport_subtype']['code'] != 'suburban') {
                $ttype = strip_tags($item['thread']['transport_subtype']['title']);
                $ttype = str_ireplace("(", " (", $ttype);
                $arr['type'] = $ttype;
            }
            $result[] = $arr;
        }
        return $result;
    }

    public function getTable($name = 'Stationsinfo', $prefix = 'TableRw', $options = array())
    {
        return parent::getTable($name, $prefix, $options);
    }

    private $is_mobile;
}
