<?php
defined('_JEXEC') or die;
use Joomla\CMS\MVC\Model\AdminModel;

class RwModelStationdir extends AdminModel {
    public function getTable($name = 'Stationdirections', $prefix = 'TableRw', $options = array())
    {
        return JTable::getInstance($name, $prefix, $options);
    }

    public function delete(&$pks)
    {
        return parent::delete($pks);
    }

    public function getItem($pk = null)
    {
        return parent::getItem($pk);
    }

    public function getForm($data = array(), $loadData = true)
    {
        $form = $this->loadForm(
            $this->option.'.stationdir', 'stationdir', array('control' => 'jform', 'load_data' => $loadData)
        );
        if (empty($form))
        {
            return false;
        }
        return $form;
    }

    protected function loadFormData()
    {
        $data = JFactory::getApplication()->getUserState($this->option.'.edit.stationdir.data', array());
        if (empty($data))
        {
            $data = $this->getItem();
        }
        //Получаем станцию
        if ($data->id == null) {
            $session = JFactory::getSession();
            $stationID = $session->get('stationdir_stationID', 0);
            $session->clear('stationdir_stationID');
        }
        else {
            $stationID = $data->stationID;
        }
        if ($stationID > 0) {
            $data->stationID = $stationID;
            $sm = AdminModel::getInstance('Station', 'RwModel');
            $station = $sm->getItem($stationID);
            $data->station = $station->title;
        }

        return $data;
    }

    public function save($data)
    {
        return parent::save($data);
    }

    protected function prepareTable($table)
    {
        $nulls = array(); //Поля, которые NULL
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
            return $user->authorise('core.edit.state', $this->option . '.stationdir.' . (int) $record->id);
        }
        else
        {
            return parent::canEditState($record);
        }
    }

    public function getScript()
    {
        return 'administrator/components/' . $this->option . '/models/forms/stationdir.js';
    }
}