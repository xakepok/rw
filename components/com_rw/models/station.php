<?php
use Joomla\CMS\MVC\Model\ItemModel;

defined('_JEXEC') or die;

class RwModelStation extends ItemModel
{
    /**
     * @throws
     * @return object
     * @since 1.0.0.6
     */
    public function getStation(): object
    {
        $id = JFactory::getApplication()->input->getInt('id', 1);
        $table = $this->getTable();
        $table->load($id);
        $table->turnstiles = mb_strtolower($table->turnstiles ?? JText::sprintf('COM_RW_NO_TURNSTILES'));
        return $table;
    }

    public function getTable($name = 'Stationsinfo', $prefix = 'TableRw', $options = array())
    {
        return parent::getTable($name, $prefix, $options);
    }
}
