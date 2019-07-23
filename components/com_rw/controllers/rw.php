<?php
use Joomla\CMS\MVC\Controller\BaseController;

defined('_JEXEC') or die;

class RwControllerRw extends BaseController
{
    public function searchStation()
    {
        $model = $this->getModel();
        $stations = $model->getStationsForAjax();
        $stations = json_encode($stations);
        jexit($stations);
    }

    public function getModel($name = 'Stations', $prefix = 'RwModel', $config = array())
    {
        return parent::getModel($name, $prefix, $config);
    }
}
