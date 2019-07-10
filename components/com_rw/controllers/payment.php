<?php
defined('_JEXEC') or die;
use Joomla\CMS\MVC\Controller\FormController;

class RwControllerPayment extends FormController {

    public function add()
    {
        $model = $this->getModel();
        $input = JFactory::getApplication()->input;
        $arr = array('id' => null, 'amount' => 1.75, 'userID' => 915);
        $model->save($arr);
        http_response_code(200);
        exit('ok');
    }

    public function display($cachable = false, $urlparams = array())
    {
        return parent::display($cachable, $urlparams);
    }

    public function getModel($name = 'Payment', $prefix = 'RwModel', $config = array('ignore_request' => true))
    {
        return parent::getModel($name, $prefix, $config);
    }
}