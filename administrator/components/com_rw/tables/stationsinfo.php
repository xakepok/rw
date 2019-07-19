<?php

use Joomla\CMS\Table\Table;

defined('_JEXEC') or die;

class TableRwStationsinfo extends Table
{
    var $id = null;
    var $station = null;
    var $direction = null;
    var $directionID = null;
    var $yandex = null;
    var $esr = null;
    var $express = null;
    var $turnstiles = null;
    var $detour = null;
    var $tppd = null;
    var $schedule = null;

    public function __construct(JDatabaseDriver $db)
    {
        parent::__construct('#__rw_stations_info', 'id', $db);
    }

    public function load($keys = null, $reset = true)
    {
        return parent::load($keys, $reset);
    }
}