<?php
defined('_JEXEC') or die;
jimport('joomla.form.helper');
JFormHelper::loadFieldClass('groupedlist');

class JFormFieldStation extends JFormFieldGroupedList
{
    protected $type = 'Station';
    protected $loadExternally = 0;

    protected function getGroups()
    {
        $db =& JFactory::getDbo();
        $query = $db->getQuery(true);
        $query
            ->select("direction, stationID, station")
            ->from("`#__rw_direction_stations`")
            ->order("direction, indexID");
        $result = $db->setQuery($query)->loadObjectList();

        $options = array();

        foreach ($result as $item) {
            if (!isset($options[$item->direction])) $options[$item->direction] = array();
            $options[$item->direction][] = JHtml::_('select.option', $item->stationID, $item->station);
        }

        if (!$this->loadExternally) {
            $options = array_merge(parent::getGroups(), $options);
        }

        return $options;
    }

    public function getOptionsExternally()
    {
        $this->loadExternally = 1;
        return $this->getGroups();
    }
}