<?php
defined('_JEXEC') or die;
?>
<h1><?php echo JText::sprintf('COM_RW_TITLE_DIRECTION', $this->direction);?></h1>
<table class="stripe row-border order-column" id="bigtable">
    <thead>
        <tr>
            <th style="border-right: 1px solid black;">
                <?php echo JText::sprintf('COM_RW_HEAD_STATION_TITLE');?>
            </th>
            <?php foreach ($this->rasp['uids'] as $uid => $number): ?>
                <th colspan="2" style="border-right: 1px solid black; text-align: center;">
                    <?php echo $number;?>
                </th>
            <?php endforeach;?>
        </tr>
    </thead>
    <tbody>
        <?php foreach ($this->items as $item) :?>
            <tr>
                <td style="border-right: 1px solid black;"><?php echo $item['station'];?></td>
                <?php foreach ($this->rasp['uids'] as $uid => $number): ?>
                    <td>
                        <?php echo $this->rasp['stations']["s".$item['yandex']][$uid]['arrival'];?>
                    </td>
                    <td style="border-right: 1px solid black;">
                        <?php echo $this->rasp['stations']["s".$item['yandex']][$uid]['departure'];?>
                    </td>
                <?php endforeach;?>
            </tr>
        <?php endforeach;?>
    </tbody>
</table>
