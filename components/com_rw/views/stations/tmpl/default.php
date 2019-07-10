<?php
use Joomla\CMS\HTML\HTMLHelper;

defined('_JEXEC') or die;

HTMLHelper::_('script', 'com_rw/script.js', array('version' => 'auto', 'relative' => true));
HTMLHelper::_('stylesheet', 'com_rw/style.css', array('version' => 'auto', 'relative' => true));
HTMLHelper::_('script', '//cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js', array('version' => 'auto', 'relative' => true));
HTMLHelper::_('script', '//cdn.datatables.net/fixedcolumns/3.2.6/js/dataTables.fixedColumns.min.js', array('version' => 'auto', 'relative' => true));
HTMLHelper::_('script', 'com_rw/tdata.js', array('version' => 'auto', 'relative' => true));
HTMLHelper::_('stylesheet', '//cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css', array('version' => 'auto', 'relative' => true));
HTMLHelper::_('stylesheet', '//cdn.datatables.net/fixedcolumns/3.2.6/css/fixedColumns.dataTables.min.css', array('version' => 'auto', 'relative' => true));
?>
<style>
    th, td { white-space: nowrap; }
    div.dataTables_wrapper {
        width: 800px;
        margin: 0 auto;
    }
</style>
<h1><?php echo JText::sprintf('COM_RW_TITLE_DIRECTION', $this->direction);?></h1>
<table class="table table-sm" style="width: 100%;">
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
<div>
    <?php //echo $this->loadTemplate('rasp');?>
</div>