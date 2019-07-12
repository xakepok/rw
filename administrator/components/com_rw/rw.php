<?php
use Joomla\CMS\MVC\Controller\BaseController;

defined('_JEXEC') or die;

jimport('joomla.log.logger.formattedtext');

// Access check.
if (!JFactory::getUser()->authorise('core.manage', 'com_rw'))
{
	throw new InvalidArgumentException(JText::sprintf('JERROR_ALERTNOAUTHOR'), 404);
}

// Require the helper
require_once JPATH_COMPONENT_ADMINISTRATOR . '/helpers/rw.php';

// Execute the task
$controller = BaseController::getInstance('rw');
$controller->execute(JFactory::getApplication()->input->get('task'));
$controller->redirect();
