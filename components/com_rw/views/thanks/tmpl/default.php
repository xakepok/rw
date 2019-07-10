<?php

use Joomla\CMS\HTML\HTMLHelper;

defined('_JEXEC') or die;

HTMLHelper::_('script', 'com_rw/script.js', array('version' => 'auto', 'relative' => true));
HTMLHelper::_('stylesheet', 'com_rw/style.css', array('version' => 'auto', 'relative' => true));

echo JText::sprintf('COM_RW_MSG_THANKS_FOR_PAYMENTS');
?>

<h3><?php echo RwHelper::isClub();?></h3>
