<?php
defined('_JEXEC') or die;

?>
<div class="row">
    <div class="col">
        <button type="button" class="btn btn-primary btn-sm" id="schedule_all">
            <small><?php echo JText::sprintf('COM_RW_HEAD_RASP_ALL_TRAINS');?> <span class="badge badge-light"><?php echo count($this->schedule['threads']);?></span></small>
        </button>
    </div>
    <?php foreach ($this->schedule['types'] as $type => $tip): ?>
        <div class="col schedule-types">
            <button type="button" class="btn btn-outline-primary btn-sm" id="switch-<?php echo $tip['code'];?>">
                <small><?php echo $type;?> <span class="badge badge-light"><?php echo $tip['cnt'];?></span></small>
            </button>
        </div>
    <?php endforeach;?>
</div>