<?php
use Joomla\CMS\MVC\Controller\AdminController;
defined('_JEXEC') or die;

class RwControllerPayments extends AdminController
{
    public function getModel($name = 'Payment', $prefix = 'RwModel', $config = array())
    {
        return parent::getModel($name, $prefix, array('ignore_request' => true));
    }
}
