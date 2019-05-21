<?php
use Joomla\CMS\HTML\HTMLHelper;

defined('_JEXEC') or die;

HTMLHelper::_('script', 'com_rw/script.js', array('version' => 'auto', 'relative' => true));
HTMLHelper::_('stylesheet', 'com_rw/style.css', array('version' => 'auto', 'relative' => true));
?>
<table class="table table-sm">
    <?php foreach ($this->items as $item) :?>
        <tr><td><?php echo $item['title'];?></td></tr>
    <?php endforeach;?>
</table>