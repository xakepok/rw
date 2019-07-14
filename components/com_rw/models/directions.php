<?php
use Joomla\CMS\MVC\Model\ListModel;

defined('_JEXEC') or die;

class RwModelDirections extends ListModel
{
    public function __construct($config = array())
    {
        parent::__construct($config);
    }

    protected function _getListQuery()
    {
        $db =& $this->getDbo();
        $query = $db->getQuery(true);
        $query
            ->select("id, title")
            ->from("`#__rw_directions`")
            ->where("`published` = 1");

        /* Сортировка */
        $orderCol  = $this->state->get('list.ordering');
        $orderDirn = $this->state->get('list.direction');
        $query->order($db->escape($orderCol . ' ' . $orderDirn));

        return $query;
    }

    public function getItems()
    {
        $items = parent::getItems();
        $result = array();
        $itemID = RwHelper::getMenuItemId('direction');
        foreach ($items as $item) {
            $arr = array();
            $url = JRoute::_("index.php?option=com_rw&amp;view=direction&amp;id={$item->id}&amp;Itemid={$itemID}");
            $arr['title'] = JHtml::link($url, $item->title);
            $result[] = $arr;
        }
        return $result;
    }

    protected function populateState($ordering = 'title', $direction = 'asc')
    {
        parent::populateState($ordering, $direction);
    }
}
