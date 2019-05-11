<?php
use Joomla\CMS\MVC\Model\ListModel;

defined('_JEXEC') or die;

class RwModelRegions extends ListModel
{
    public function __construct($config = array())
    {
        if (empty($config['filter_fields']))
        {
            $config['filter_fields'] = array(
                'r.id', 'country', 'region', 'search'
            );
        }
        parent::__construct($config);
    }

    protected function _getListQuery()
    {
        $db =& $this->getDbo();
        $query = $db->getQuery(true);
        $query
            ->select("`r`.`id`, `r`.`title` as `region`")
            ->select("`r`.`countryID`, `c`.`title` as `country`")
            ->from("`#__rw_regions` as `r`")
            ->leftJoin("`#__rw_countries` as `c` on `c`.`id` = `r`.`countryID`");

        /* Фильтр */
        $search = $this->getState('filter.search');
        if (!empty($search)) {
            $search = $db->q("%{$search}%");
            $query->where("`r`.`title` LIKE {$search}");
        }
        //Фильтр по стране
        $country = $this->getState('filter.country');
        if (is_numeric($country)) {
            $country = $db->q($country);
            $query->where("`r`.`countryID` = {$country}");
        }

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
        if (empty($items)) return $result;
        foreach ($items as $item) {
            $arr = array();
            $arr['id'] = $item->id;
            $url = JRoute::_("index.php?option=com_rw&amp;task=region.edit&amp;id={$item->id}");
            $arr['region'] = JHtml::link($url, $item->region);
            $arr['country'] = $item->country;
            $result[] = $arr;
        }
        return $result;
    }

    /* Сортировка по умолчанию */
    protected function populateState($ordering = 'region', $direction = 'asc')
    {
        $search = $this->getUserStateFromRequest($this->context . '.filter.search', 'filter_search');
        $this->setState('filter.search', $search);
        $country = $this->getUserStateFromRequest($this->context . '.filter.country', 'filter_country');
        $this->setState('filter.country', $country);
        parent::populateState($ordering, $direction);
    }

    protected function getStoreId($id = '')
    {
        $id .= ':' . $this->getState('filter.country');
        $id .= ':' . $this->getState('filter.search');
        return parent::getStoreId($id);
    }
}
