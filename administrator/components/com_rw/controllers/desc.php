<?php
defined('_JEXEC') or die;
use Joomla\CMS\MVC\Controller\FormController;

class RwControllerDesc extends FormController {
    public function display($cachable = false, $urlparams = array())
    {
        return parent::display($cachable, $urlparams);
    }
    public function add()
    {
        $input = JFactory::getApplication()->input;
        $stationID = $input->getInt('stationID', 0);
        if ($stationID > 0) {
            JFactory::getApplication()->setUserState("{$this->option}.desc.stationID", $stationID);
        }
        return parent::add();
    }
}