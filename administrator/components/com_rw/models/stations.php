<?php
use Joomla\CMS\MVC\Model\ListModel;

defined('_JEXEC') or die;

class RwModelStations extends ListModel
{
    public function __construct($config = array())
    {
        if (empty($config['filter_fields']))
        {
            $config['filter_fields'] = array(
                's.id', 'country', 'region', 'search', 'esr', 'yandex',
            );
        }
        parent::__construct($config);
    }

    protected function _getListQuery()
    {
        $db =& $this->getDbo();
        $query = $db->getQuery(true);
        $query
            ->select("`s`.`id`, `s`.`title` as`station`, `s`.`regionID`, `s`.`yandex`")
            ->select("CASE LENGTH(`s`.`esr`) WHEN 3 THEN CONCAT('000',`s`.`esr`) WHEN 4 THEN CONCAT('00',`s`.`esr`) WHEN 5 THEN CONCAT('0',`s`.`esr`) WHEN 6 THEN `s`.`esr` END as `esr`")
            ->select("`r`.`countryID`, `r`.`title` as `region`")
            ->select("`c`.`title` as `country`")
            ->from("`#__rw_stations` as `s`")
            ->leftJoin("`#__rw_regions` as `r` on `r`.`id` = `s`.`regionID`")
            ->leftJoin("`#__rw_countries` as `c` on `c`.`id` = `r`.`countryID`");

        /* Фильтр */
        $search = $this->getState('filter.search');
        if (!empty($search)) {
            $search = $db->q("%{$search}%");
            $query->where("(`s`.`title` LIKE {$search} OR `s`.`esr` LIKE {$search} OR `s`.`yandex` LIKE {$search})");
        }
        //Фильтр по региону
        $region = $this->getState('filter.region');
        if (is_numeric($region)) {
            $region = $db->q($region);
            $query->where("`s`.`regionID` = {$region}");
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
            $url = JRoute::_("index.php?option=com_rw&amp;task=station.edit&amp;id={$item->id}");
            $arr['station'] = JHtml::link($url, $item->station);
            $arr['country'] = $item->country;
            $arr['region'] = $item->region;
            $arr['esr'] = $item->esr;
            $arr['yandex'] = $item->yandex;
            $result[] = $arr;
        }
        return $result;
    }

    /* Сортировка по умолчанию */
    protected function populateState($ordering = 'yandex', $direction = 'asc')
    {
        $search = $this->getUserStateFromRequest($this->context . '.filter.search', 'filter_search');
        $this->setState('filter.search', $search);
        $region = $this->getUserStateFromRequest($this->context . '.filter.region', 'filter_region');
        $this->setState('filter.region', $region);
        parent::populateState($ordering, $direction);
    }

    protected function getStoreId($id = '')
    {
        $id .= ':' . $this->getState('filter.region');
        $id .= ':' . $this->getState('filter.search');
        return parent::getStoreId($id);
    }
}
