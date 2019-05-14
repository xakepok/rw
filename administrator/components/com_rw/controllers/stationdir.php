<?php
defined('_JEXEC') or die;
use Joomla\CMS\MVC\Controller\FormController;
use Joomla\CMS\MVC\Model\AdminModel;

class RwControllerStationdir extends FormController {
    public function display($cachable = false, $urlparams = array())
    {
        return parent::display($cachable, $urlparams);
    }

    public function add()
    {
        $stationID = $this->input->getInt('stationID', 0);
        if ($stationID > 0) {
            $session = JFactory::getSession();
            $session->set('stationdir_stationID', $stationID);
        }
        return parent::add();
    }

    public function delete()
    {
        $model = AdminModel::getInstance('Stationdir', 'RwModel');
        $return = base64_decode($this->input->getString('return'));
        $id = $this->input->getInt('id', 0);
        if ($id > 0) {
            if(!$model->delete($id)) {
                $msg = JText::sprintf('COM_RW_ERROR_REMOVE_ASSET_STATION_DIR');
                $type = 'error';
            }
            else {
                $msg = JText::sprintf('COM_RW_SUCCESS_REMOVE_ASSET_STATION_DIR');
                $type = 'success';
            }
        }
        else {
            $msg = JText::sprintf('COM_RW_ERROR_REMOVE_ASSET_STATION_DIR');
            $type = 'error';
        }
        $this->setRedirect($return, $msg, $type);
        $this->redirect();
        jexit();
    }
}