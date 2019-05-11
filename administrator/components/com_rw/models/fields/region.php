<?php
defined('_JEXEC') or die;
jimport('joomla.form.helper');
JFormHelper::loadFieldClass('groupedlist');

class JFormFieldRegion extends JFormFieldGroupedList
{
    protected $type = 'Region';
    protected $loadExternally = 0;

    protected function getGroups()
    {
        $db =& JFactory::getDbo();
        $query = $db->getQuery(true);
        $query
            ->select("`r`.`id`, `r`.`title` as `region`, `c`.`title` as `country`")
            ->from("`#__rw_regions` as `r`")
            ->leftJoin("`#__rw_countries` as `c` on `c`.`id` = `r`.`countryID`")
            ->order("`r`.`title`");
        $result = $db->setQuery($query)->loadObjectList();

        $options = array();

        foreach ($result as $item) {
            if (!isset($options[$item->country])) $options[$item->country] = array();
            $options[$item->country][] = JHtml::_('select.option', $item->id, $item->region);
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