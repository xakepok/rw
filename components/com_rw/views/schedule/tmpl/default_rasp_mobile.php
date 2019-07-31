<?php
defined('_JEXEC') or die;
?>
<div class="w-100">
    <?php echo $this->loadTemplate('rasp_mobile_types');?>
</div>
<div class="w-100 threads">
    <?php foreach ($this->schedule['threads'] as $item): ?>
    <div class="schedule card mb-1 w-100 p-1 thread-<?php echo $item['code'];?> <?php if ($item['hide']):?>d-none<?php endif;?>">
        <div class="row">
            <div class="col-3 text-left">
                <?php echo $item['departure'];?>
            </div>
            <div class="col-9 text-right">
                <?php echo $item['title'];?>
            </div>
        </div>
        <?php if ($item['platform'] != '' || $item['type'] != ''):?>
            <div class="row">
                <div class="col-4 text-left">
                    <span style="font-size: 0.7em;"><?php echo $item['platform'];?></span>
                </div>
                <div class="col-8 text-right">
                    <span style="font-size: 0.7em; color: <?php echo $item['color'];?>"><?php echo $item['type'];?></span>
                </div>
            </div>
        <?php endif;?>
        <div class="row">
            <div class="col">
                <span style="font-size: 0.7em;"><?php echo $item['stops'];?></span>
            </div>
        </div>
    </div>
    <?php endforeach;?>
</div>
