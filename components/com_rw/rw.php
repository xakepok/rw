<?php
use Joomla\CMS\Factory;
use Joomla\CMS\MVC\Controller\BaseController;

defined('_JEXEC') or die;

JLoader::register('RwHelper', JPATH_COMPONENT_ADMINISTRATOR."/helpers/rw.php");

$controller = BaseController::getInstance('rw');
$controller->execute(Factory::getApplication()->input->get('task'));
$controller->redirect();
