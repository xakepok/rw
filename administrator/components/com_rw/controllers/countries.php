<?php
use Joomla\CMS\MVC\Controller\AdminController;
defined('_JEXEC') or die;

class RwControllerCountries extends AdminController
{
    public function getModel($name = 'Country', $prefix = 'RwModel', $config = array())
    {
        return parent::getModel($name, $prefix, array('ignore_request' => true));
    }
}
