<?php
defined('_JEXEC') or die;
?>
<div class="container-fluid">
    <div class="row">
        <div class="col-lg-9 text-left">
            <ul class="nav nav-pills">
                <?php foreach ($this->station->rasp['directions'] as $direction): ?>
                    <li class="nav-item">
                        <a class="nav-link <?php if ($direction['code'] === $this->station->rasp['direction']) echo 'active bg-success ';?>" href="<?php echo $direction['url'];?>">
                            <?php echo $direction['title'];?>
                        </a>
                    </li>
                <?php endforeach;?>
            </ul>
        </div>
        <div class="col-lg-3 text-right">
            <input type="date" value="<?php echo $this->station->rasp['date'];?>" name="date" min="<?php echo date("Y-m-d");?>" />
        </div>
    </div>
</div>
<br>
<div class="container-fluid">
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

</div>
