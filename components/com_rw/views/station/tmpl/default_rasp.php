<?php
defined('_JEXEC') or die;
?>
<table class="table table-sm">
    <thead>
        <tr>
            <th><?php echo JText::sprintf('COM_RW_HEAD_RASP_THREAD_NUMBER');?></th>
            <th><?php echo JText::sprintf('COM_RW_HEAD_RASP_THREAD_ARRIVAL_SHORT');?></th>
            <th><?php echo JText::sprintf('COM_RW_HEAD_RASP_THREAD_DEPARTURE_SHORT');?></th>
            <th><?php echo JText::sprintf('COM_RW_HEAD_RASP_THREAD_ROUTE');?></th>
            <th><?php echo JText::sprintf('COM_RW_HEAD_RASP_THREAD_STOPS');?></th>
        </tr>
    </thead>
    <tbody>
        <?php foreach ($this->station->rasp['schedule'] as $item): ?>
            <tr>
                <td><?php echo $item['number'];?></td>
                <td><?php echo $item['arrival'];?></td>
                <td>
                    <div><?php echo $item['departure'];?></div>
                    <div>
                        <span style="font-size: 0.7em;"><?php echo $item['platform'];?></span>
                    </div>
                </td>
                <td><?php echo $item['route'];?></td>
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
