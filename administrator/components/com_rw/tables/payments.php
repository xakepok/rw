<?php

use Joomla\CMS\Table\Table;

defined('_JEXEC') or die;

class TableRwPayments extends Table
{
    var $id = null;
    var $dat = null;
    var $userID = null;
    var $amount = null;
    var $withdraw_amount = null;
    var $operationID = null;
    var $label = null;
    var $variant = null;
    var $sender = null;

    public function __construct(JDatabaseDriver $db)
    {
        parent::__construct('#__payments', 'id', $db);
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