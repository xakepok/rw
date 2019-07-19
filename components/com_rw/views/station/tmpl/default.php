<?php
use Joomla\CMS\HTML\HTMLHelper;

defined('_JEXEC') or die;

HTMLHelper::_('script', 'com_rw/script.js', array('version' => 'auto', 'relative' => true));
HTMLHelper::_('stylesheet', 'com_rw/style.css', array('version' => 'auto', 'relative' => true));
?>

<div class="row">
    <div class="col-lg-6 text-left">
        <h2><?php echo $this->station->station;?></h2>
    </div>
    <div class="col-lg-6 text-right">
        <h3><?php echo JText::sprintf('COM_RW_TITLE_DIRECTION', $this->station->direction);?></h3>
    </div>
</div>
<h4><?php echo JText::sprintf('COM_RW_STATION_TITLE_TURNSTILES');?></h4>
<?php echo JText::sprintf('COM_RW_TITLE_TURNSTILES', $this->station->turnstiles);?>
<?php if ($this->station->has_turnstiles): ?>
<div>
    <h4><?php echo JText::sprintf('COM_RW_TITLE_DETOUR');?></h4>
    <?php echo $this->station->detour;?>
</div>
<?php endif;?>
<h4><?php echo JText::sprintf('COM_RW_STATION_TITLE_RASP_ON_DATE', JDate::getInstance($this->station->rasp['date'])->format("d.m.Y"));?></h4>
<?php if ($this->station->rasp !== null): ?>
    <div class="container-fluid">
        <?php echo $this->loadTemplate("rasp_{$this->device}");?>
    </div>
<?php endif;?>
