<?php
use Joomla\CMS\HTML\HTMLHelper;

defined('_JEXEC') or die;

HTMLHelper::_('script', 'com_rw/script.js', array('version' => 'auto', 'relative' => true));
HTMLHelper::_('stylesheet', 'com_rw/style.css', array('version' => 'auto', 'relative' => true));
?>

<div>
    <h2><?php echo $this->station->station;?></h2>
    <h3><?php echo JText::sprintf('COM_RW_TITLE_DIRECTION', $this->station->direction);?></h3>
    <?php echo JText::sprintf('COM_RW_TITLE_TURNSTILES', $this->station->turnstiles);?>
</div>
<div>
    <h4><?php echo JText::sprintf('COM_RW_TITLE_DETOUR');?></h4>
    <?php echo $this->station->detour;?>
</div>