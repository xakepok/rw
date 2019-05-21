<?php
use Joomla\CMS\HTML\HTMLHelper;

defined('_JEXEC') or die;

HTMLHelper::_('script', 'com_rw/script.js', array('version' => 'auto', 'relative' => true));
HTMLHelper::_('stylesheet', 'com_rw/style.css', array('version' => 'auto', 'relative' => true));
?>
<h1><?php echo JText::sprintf('COM_RW_TITLE_DIRECTION', $this->direction);?></h1>
<table class="table table-sm">
    <thead>
        <tr>
            <th>
                <?php echo JText::sprintf('COM_RW_HEAD_STATION_TITLE');?>
            </th>
            <th>
                <?php echo JText::sprintf('COM_RW_HEAD_STATION_ZONE_ID');?>
            </th>
            <th>
                <?php echo JText::sprintf('COM_RW_HEAD_STATION_ZONE_DISTANCE');?>
            </th>
            <th>
                <?php echo JText::sprintf('COM_RW_HEAD_STATION_ZONE_TURNSTILES');?>
            </th>
        </tr>
    </thead>
    <tbody>
        <?php foreach ($this->items as $item) :?>
            <tr>
                <td><?php echo $item['station'];?></td>
                <td><?php echo $item['zoneID'];?></td>
                <td><?php echo $item['distance'];?></td>
                <td><?php echo $item['turnstiles'];?></td>
            </tr>
        <?php endforeach;?>
    </tbody>
</table>
