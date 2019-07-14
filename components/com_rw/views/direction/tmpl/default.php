<?php
use Joomla\CMS\HTML\HTMLHelper;

defined('_JEXEC') or die;

HTMLHelper::_('script', 'com_rw/script.js', array('version' => 'auto', 'relative' => true));
HTMLHelper::_('stylesheet', 'com_rw/style.css', array('version' => 'auto', 'relative' => true));
$itemID = RwHelper::getMenuItemId('stations');
?>

<div>
    <h2><?php echo JText::sprintf('COM_RW_TITLE_DIRECTION', $this->direction->title);?></h2>
</div>
<div class="center">
    <?php echo JHtml::link("index.php?view=stations&amp;directionID={$this->direction->id}&amp;Itemid={$itemID}", JText::sprintf('COM_RW_LINK_STATIONS_IN_DIRECTION'));?>
</div>
<div>
    <h3><?php echo JText::sprintf('COM_RW_TITLE_DIRECTION_INFO');?></h3>
    <?php if ($this->direction->is_cocon): ?>
    <div class="alert alert-danger" role="alert">
        <?php echo JText::sprintf('COM_RW_WARING_COCON');?>
    </div>
    <?php endif;?>
    <?php echo $this->direction->info;?>
</div>
