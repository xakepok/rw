<?php
use Joomla\CMS\MVC\Model\ListModel;

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
        foreach ($items as $item) {
            $arr = array();
            $arr['id'] = $item->stationID;
            $url = JRoute::_("index.php?view=station&amp;id={$item->stationID}");
            $arr['station'] = JHtml::link($url, $item->station);
            $arr['indexID'] = $item->indexID;
            $arr['zoneID'] = $item->zoneID;
            $arr['distance'] = JText::sprintf('COM_RW_TITLE_DISTANCE_KM', $item->distance);
            $arr['turnstiles'] = $item->turnstiles ?? JText::sprintf('COM_RW_NO_TURNSTILES');
            $result[] = $arr;
        }
        return $result;
    }

    protected function populateState($ordering = 'indexID', $direction = 'asc')
    {
        parent::populateState($ordering, $direction);
    }

    private $directionID;
}
