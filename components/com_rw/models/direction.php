<?php
use Joomla\CMS\MVC\Model\ItemModel;

defined('_JEXEC') or die;

class RwModelDirection extends ItemModel
{
    /**
     * @throws
     * @return object
     * @since 1.0.0.6
     */
    public function getDirection(): object
    {
        $id = JFactory::getApplication()->input->getInt('id', 1);
        $table = $this->getTable();
        $table->load($id);
        return $table;
    }

    public function getTable($name = 'Directions', $prefix = 'TableRw', $options = array())
    {
        return parent::getTable($name, $prefix, $options);
    }
}
