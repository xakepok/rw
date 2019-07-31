<?php
defined('_JEXEC') or die;
?>
<div class="container-fluid">
    <div>
        <?php echo $this->loadTemplate('rasp_desktop_types');?>
    </div>
    <div>
        <a href="#" onclick="$('.schedule').toggleClass('d-none'); return false;"><?php echo JText::sprintf('COM_RW_ACTION_TOGGLE_DEPARTURE');?></a>
    </div>
    <table class="table table-sm" id="table-schedule">
        <thead>
        <tr>
            <th><?php echo JText::sprintf('COM_RW_HEAD_RASP_THREAD_NUMBER');?></th>
            <th><?php echo JText::sprintf('COM_RW_HEAD_RASP_THREAD_DEPARTURE_SHORT');?></th>
            <th><?php echo JText::sprintf('COM_RW_HEAD_RASP_THREAD_ARRIVAL_SHORT');?></th>
            <th><?php echo JText::sprintf('COM_RW_HEAD_RASP_DURATION');?></th>
            <th><?php echo JText::sprintf('COM_RW_HEAD_RASP_THREAD_ROUTE');?></th>
            <th><?php echo JText::sprintf('COM_RW_HEAD_RASP_THREAD_STOPS');?></th>
        </tr>
        </thead>
        <tbody>
        <?php foreach ($this->schedule['threads'] as $item): ?>
            <tr class="schedule <?php if ($item['hide']):?>d-none<?php endif;?> thread-<?php echo $item['code'];?>">
                <td><?php echo $item['number'];?></td>
                <td>
                    <div><?php echo $item['departure'];?></div>
                    <div>
                        <span style="font-size: 0.7em;"><?php echo $item['platform'];?></span>
                    </div>
                </td>
                <td><?php echo $item['arrival'];?></td>
                <td><?php echo $item['duration'];?></td>
                <td><?php echo $item['title'];?></td>
                <td>
                    <div><?php echo $item['stops'];?></div>
                    <div>
                        <span style="color: <?php echo $item['color'];?>; font-size: 0.7em;"><?php echo $item['type'];?></span>
                    </div>
                </td>
            </tr>
        <?php endforeach;?>
        </tbody>
    </table>
</div>
