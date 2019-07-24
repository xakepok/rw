<?php
use Joomla\CMS\HTML\HTMLHelper;

defined('_JEXEC') or die;

HTMLHelper::_('script', 'com_rw/script.js', array('version' => 'auto', 'relative' => true));
HTMLHelper::_('stylesheet', 'com_rw/style.css', array('version' => 'auto', 'relative' => true));
?>

<?php if (!empty($this->schedule['threads'])): ?>
    <div class="container-fluid">
        <?php echo $this->loadTemplate("rasp_{$this->device}");?>
    </div>
<?php endif;?>
