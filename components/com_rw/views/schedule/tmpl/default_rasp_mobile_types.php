<?php
defined('_JEXEC') or die;

?>
<div class="row">
    <button class="btn btn-primary dropdown-toggle w-100 mb-1" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
        <?php echo JText::sprintf('COM_RW_HEAD_RASP_MOBILE_VARIANTS');?>
    </button>
    <div class="dropdown-menu w-100">
        <div class="text-center">
            <div class="col-sm-12 schedule-types mb-1 w-100">
                <button type="button" class="btn btn-outline-dark btn-sm w-100" id="toggle-schedule-hide">
                    <small><?php echo JText::sprintf('COM_RW_ACTION_TOGGLE_DEPARTURE');?></small>
                </button>
            </div>
        </div>
        <div class="col-sm-12 mb-1 w-100">
            <button type="button" class="btn btn-primary btn-sm w-100" id="schedule_all">
                <small><?php echo JText::sprintf('COM_RW_HEAD_RASP_ALL_TRAINS');?> <span class="badge badge-light"><?php echo count($this->schedule['threads']);?></span></small>
            </button>
        </div>
        <?php foreach ($this->schedule['types'] as $type => $tip): ?>
            <div class="col-sm-12 schedule-types mb-1 w-100">
                <button type="button" class="btn btn-outline-primary btn-sm w-100" id="switch-<?php echo $tip['code'];?>">
                    <small><?php echo $type;?> <span class="badge badge-light"><?php echo $tip['cnt'];?></span></small>
                </button>
            </div>
        <?php endforeach;?>
    </div>
</div>