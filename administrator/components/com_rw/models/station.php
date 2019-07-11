<?php
defined('_JEXEC') or die;
use Joomla\CMS\MVC\Model\AdminModel;

class RwModelStation extends AdminModel {
    public function getTable($name = 'Stations', $prefix = 'TableRw', $options = array())
    {
        return JTable::getInstance($name, $prefix, $options);
    }

    public function getItem($pk = null)
    {
        $item = parent::getItem($pk);
        if ($item->id != null) {
            $item->directions = RwHelper::getStationDirections($item->id ?? 0, true);
            $item->descs = $this->getDescs();
        }
        return $item;
    }

    public function getForm($data = array(), $loadData = true)
    {
        $form = $this->loadForm(
            $this->option.'.station', 'station', array('control' => 'jform', 'load_data' => $loadData)
        );
        if (empty($form))
        {
            return false;
        }
        return $form;
    }

    protected function loadFormData()
    {
        $data = JFactory::getApplication()->getUserState($this->option.'.edit.station.data', array());
        if (empty($data))
        {
            $data = $this->getItem();
        }

        return $data;
    }

    /**
     * Возвращает массив со временем работы касс
     * @return array
     * @since 1.0.1.6
     * @throws
     */
    public function getDescs(): array
    {
        $id = JFactory::getApplication()->input->getInt('id', 0);
        if ($id === 0) return array();

        $db =& $this->getDbo();
        $query = $db->getQuery(true);
        $query
            ->select("*")
            ->from("`#__rw_desc`")
            ->where("`stationID` = {$id}");
        $items = $db->setQuery($query)->loadAssocList();
        if (empty($items)) return array();
        $result = array();
        foreach ($items as $item) {
            $arr = array();
            $arr['time_mask'] = JText::sprintf("COM_RW_DESC_TIME_MASK_{$item['time_mask']}");
            $arr['time_1'] = $item['time_1'];
            $arr['time_2'] = $item['time_2'];
            $arr['id'] = $item['id'];
            $result[] = $arr;
        }
        return $result ?? array();
    }

    public function save($data)
    {
        return parent::save($data);
    }

    protected function prepareTable($table)
    {
        $nulls = array('detour', 'turnstiles', 'tppd'); //Поля, которые NULL
        foreach ($nulls as $field)
        {
            if (!strlen($table->$field)) $table->$field = NULL;
        }
        parent::prepareTable($table);
    }


    public function delete(&$pks)
    {
        return parent::delete($pks);
    }


    protected function canEditState($record)
    {
        $user = JFactory::getUser();

        if (!empty($record->id))
        {
            return $user->authorise('core.edit.state', $this->option . '.station.' . (int) $record->id);
        }
        else
        {
            return parent::canEditState($record);
        }
    }

    public function getScript()
    {
        return 'administrator/components/' . $this->option . '/models/forms/region.js';
    }
}