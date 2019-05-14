<?php

use Joomla\CMS\Table\Table;

defined('_JEXEC') or die;

class TableRwStationdirections extends Table
{
    var $id = null;
    var $stationID = null;
    var $directionID = null;
    var $indexID = null;
    var $zoneID = null;
    var $level = null;
    var $new_level = null;
    var $distance = null;
    var $default_schedule = null;

    public function __construct(JDatabaseDriver $db)
    {
        parent::__construct('#__rw_station_directions', 'id', $db);
    }

    public function load($keys = null, $reset = true)
    {
        return parent::load($keys, $reset);
    }

    public function bind($src, $ignore = array())
    {
        foreach ($src as $field => $value) {
            if (isset($this->$field)) $this->$field = $value;
        }
        return parent::bind($src, $ignore);
    }

    public function save($src, $orderingFilter = '', $ignore = '')
    {
        return parent::save($src, $orderingFilter, $ignore);
    }

    public function store($updateNulls = true)
    {
        return parent::store($updateNulls);
    }
}