<?php
use Joomla\CMS\MVC\Controller\AdminController;
use Joomla\Utilities\ArrayHelper;

defined('_JEXEC') or die;

class RwControllerDescs extends AdminController
{
    public function getModel($name = 'Desc', $prefix = 'RwModel', $config = array())
    {
        return parent::getModel($name, $prefix, array('ignore_request' => true));
    }

    public function delete()
    {
        $model = $this->getModel();
        $cid = JFactory::getApplication()->input->get('cid', array());
        $ret = base64_decode(JFactory::getApplication()->input->get('ret', null));
        $cid = $cid = ArrayHelper::toInteger($cid);
        $model->delete($cid);
        header("Location: {$ret}");
        jexit();
    }
}
