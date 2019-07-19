<?php
use Joomla\CMS\HTML\HTMLHelper;

defined('_JEXEC') or die;

HTMLHelper::_('script', 'com_rw/script.js', array('version' => 'auto', 'relative' => true));
HTMLHelper::_('stylesheet', 'com_rw/style.css', array('version' => 'auto', 'relative' => true));
?>

<div class="row">
    <div class="col-lg-3 text-left">
        <h2><?php echo $this->thread['number'];?></h2>
    </div>
    <div class="col-lg-9 text-right">
        <h2><?php echo $this->thread['title'];?></h2>
    </div>
</div>
<div>
    <table class="table table-sm">
        <thead>
            <tr>
                <th><?php echo JText::sprintf('COM_RW_HEAD_THREAD_STATION');?></th>
                <th><?php echo JText::sprintf('COM_RW_HEAD_THREAD_ARRIVAL_SHORT');?></th>
                <th><?php echo JText::sprintf('COM_RW_HEAD_THREAD_DEPARTURE_SHORT');?></th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($this->thread['stops'] as $stop): ?>
                <tr>
                    <td>
                        <?php echo $stop['station'][(!$this->device != 'mobile') ? 'title' : 'short_title'];?>
                    </td>
                    <td>
                        <?php echo $stop['arrival'];?>
                    </td>
                    <td>
                        <?php echo $stop['departure'];?>
                    </td>
                </tr>
            <?php endforeach;?>
        </tbody>
    </table>
    <pre>
        <?php var_dump($this->thread);?>
    </pre>
</div>