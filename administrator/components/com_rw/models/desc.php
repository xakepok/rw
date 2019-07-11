<?php
defined('_JEXEC') or die;
use Joomla\CMS\MVC\Model\AdminModel;

class RwModelDesc extends AdminModel {
    public function getTable($name = 'Descs', $prefix = 'TableRw', $options = array())
    {
        return JTable::getInstance($name, $prefix, $options);
    }

    public function delete(&$pks)
    {
        return parent::delete($pks);
    }

    public function getItem($pk = null)
    {
        $item = parent::getItem($pk);
        $id = $item->stationID ?? JFactory::getApplication()->getUserState("{$this->option}.desc.stationID", null);
        if ($id !== null) {
            $model = parent::getInstance('Station', 'RwModel');
            $station = $model->getItem($id);
            $item->station = $station->title;
        }
        $item->stationID = $id;
        return $item;
    }

    public function getForm($data = array(), $loadData = true)
    {
        $form = $this->loadForm(
            $this->option.'.desc', 'desc', array('control' => 'jform', 'load_data' => $loadData)
        );
        if (empty($form))
        {
            return false;
        }
        return $form;
    }

    protected function loadFormData()
    {
        $data = JFactory::getApplication()->getUserState($this->option.'.edit.desc.data', array());
        if (empty($data))
        {
            $data = $this->getItem();
        }

        return $data;
    }

    public function save($data)
    {
        return parent::save($data);
    }

    protected function prepareTable($table)
    {
        $nulls = array('time_1', 'time_2'); //Поля, которые NULL
        foreach ($nulls as $field)
        {
            if (!strlen($table->$field)) $table->$field = NULL;
        }
        parent::prepareTable($table);
    }

    protected function canEditState($record)
    {
        $user = JFactory::getUser();

        if (!empty($record->id))
        {
            return $user->authorise('core.edit.state', $this->option . '.desc.' . (int) $record->id);
        }
        else
        {
            return parent::canEditState($record);
        }
    }

    public function getScript()
    {
        return 'administrator/components/' . $this->option . '/models/forms/desc.js';
    }
}