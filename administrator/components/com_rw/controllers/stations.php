<?php
use Joomla\CMS\MVC\Controller\AdminController;
defined('_JEXEC') or die;

class RwControllerStations extends AdminController
{
    public function getModel($name = 'Station', $prefix = 'RwModel', $config = array())
    {
        return parent::getModel($name, $prefix, array('ignore_request' => true));
    }
}
