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
                's.id', 'country', 'region', 'search', 'esr', 'yandex', 'express', 'turnstiles', 'direction', 'indexID', 'tppd',
            );
        }
        parent::__construct($config);
    }

    protected function _getListQuery()
    {
        $db =& $this->getDbo();
        $query = $db->getQuery(true);
        $query
            ->select("`s`.`id`, `s`.`title` as`station`, `s`.`regionID`, `s`.`yandex`, `s`.`esr`, `s`.`express`, IF(`s`.`turnstiles` is null, 0, 1) as `turnstiles`, `s`.`tppd`")
            ->select("CASE LENGTH(`s`.`esr`) WHEN 3 THEN CONCAT('000',`s`.`esr`) WHEN 4 THEN CONCAT('00',`s`.`esr`) WHEN 5 THEN CONCAT('0',`s`.`esr`) WHEN 6 THEN `s`.`esr` END as `esr`")
            ->select("`d`.`title` as `direction`")
            ->select("`di`.`indexID`")
            ->select("`r`.`countryID`, `r`.`title` as `region`")
            ->select("`c`.`title` as `country`")
            ->from("`#__rw_stations` as `s`")
            ->leftJoin("`#__rw_regions` as `r` on `r`.`id` = `s`.`regionID`")
            ->leftJoin("`#__rw_countries` as `c` on `c`.`id` = `r`.`countryID`")
            ->leftJoin("`#__rw_station_directions` as `di` on `di`.`stationID` = `s`.`id`")
            ->leftJoin("`#__rw_directions` as `d` on `d`.`id` = `di`.`directionID`");

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
        //Фильтр по направлению
        $direction = $this->getState('filter.direction');
        if (is_numeric($direction)) {
            $direction = $db->q($direction);
            $query->where("`d`.`id` = {$direction}");
        }
        //Фильтр по наличию турникетов
        $turnstiles = $this->getState('filter.turnstiles');
        if (is_numeric($turnstiles)) {
            if ($turnstiles == 0) {
                $query->where("`s`.`turnstiles` is null");
            }
            else {
                $query->where("`s`.`turnstiles` is not null");
            }
        }
        //Фильтр по наличию ТППД
        $tppd = $this->getState('filter.tppd');
        if (is_numeric($tppd)) {
            if ($tppd == 2) {
                $query->where("`s`.`tppd` is null");
            }
            else {
                $query->where("`s`.`tppd` = {$tppd}");
            }
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
            $arr['indexID'] = $item->indexID;
            $arr['esr'] = $item->esr;
            $arr['yandex'] = $item->yandex;
            $arr['express'] = ($item->express == '0') ? JText::sprintf('COM_RW_NO_INFO') : $item->express;
            $arr['turnstiles'] = JText::sprintf(($item->turnstiles != '0') ? 'JYES' : 'JNO');
            switch ($item->tppd)
            {
                case '0': {
                    $arr['tppd'] = 'JNO';
                    break;
                }
                case '1': {
                    $arr['tppd'] = 'JYES';
                    break;
                }
                default: {
                    $arr['tppd'] = 'COM_RW_FORM_STATION_TPPD_UNKNOWN';
                }
            }
            $arr['tppd'] = JText::sprintf($arr['tppd']);
            $arr['directions'][] = $item->direction;
            if (!isset($result[$item->id])) {
                $result[$item->id] = $arr;
            }
            else {
                $result[$item->id]['directions'][] = $item->direction;
            }
        }
        if (!empty($items)) $result = $this->getDirections($result ?? array());
        return $result;
    }

    /**
     * @param array $items массив с результатами запроса
     * @return array
     * @since 1.0.0.4
     */
    private function getDirections(array $items): array
    {
        if (empty($items)) return $items;
        foreach ($items as $id => $item) {
            $directions = implode(", ", $items[$id]['directions']);
            $items[$id]['directions'] = $directions;
        }
        return $items;
    }

    /* Сортировка по умолчанию */
    protected function populateState($ordering = 'yandex', $direction = 'asc')
    {
        $search = $this->getUserStateFromRequest($this->context . '.filter.search', 'filter_search');
        $this->setState('filter.search', $search);
        $region = $this->getUserStateFromRequest($this->context . '.filter.region', 'filter_region');
        $this->setState('filter.region', $direction);
        $direction = $this->getUserStateFromRequest($this->context . '.filter.direction', 'filter_direction');
        $this->setState('filter.direction', $region);
        $turnstiles = $this->getUserStateFromRequest($this->context . '.filter.turnstiles', 'filter_turnstiles');
        $this->setState('filter.turnstiles', $turnstiles);
        $tppd = $this->getUserStateFromRequest($this->context . '.filter.tppd', 'filter_tppd');
        $this->setState('filter.tppd', $tppd);
        parent::populateState($ordering, $direction);
    }

    protected function getStoreId($id = '')
    {
        $id .= ':' . $this->getState('filter.region');
        $id .= ':' . $this->getState('filter.search');
        $id .= ':' . $this->getState('filter.direction');
        $id .= ':' . $this->getState('filter.turnstiles');
        $id .= ':' . $this->getState('filter.tppd');
        return parent::getStoreId($id);
    }
}
