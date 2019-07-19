<?php
defined('_JEXEC') or die;
?>
<div class="w-100">
    <div class="row">
        <div class="col-xs-6 text-left">
            <ul class="nav nav-pills">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
                        <?php echo JText::sprintf('COM_RW_STATION_SELECT_DIRECTION');?>
                    </a>
                    <div class="dropdown-menu">
                        <?php foreach ($this->station->rasp['directions'] as $direction): ?>
                            <a class="dropdown-item <?php if ($direction['code'] === $this->station->rasp['direction']) echo 'active bg-success ';?>" href="<?php echo $direction['url'];?>">
                                <?php echo $direction['title'];?>
                            </a>
                        <?php endforeach;?>
                    </div>
                </li>
            </ul>
        </div>
        <div class="col-xs-6 text-right">
            <input type="date" value="<?php echo $this->station->rasp['date'];?>" name="date" min="<?php echo date("Y-m-d");?>" />
        </div>
    </div>
</div>
<div class="w-100">
    <?php foreach ($this->station->rasp['schedule'] as $item): ?>
    <div class="card mb-1 w-100 p-1">
        <div class="row">
            <div class="col-3 text-left">
                <?php echo $item['departure'];?>
            </div>
            <div class="col-9 text-right">
                <?php echo $item['route'];?>
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
