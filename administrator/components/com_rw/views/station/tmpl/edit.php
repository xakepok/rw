<?php
defined('_JEXEC') or die;
JHtml::_('behavior.formvalidation');
JHtml::_('formbehavior.chosen', 'select');

use Joomla\CMS\HTML\HTMLHelper;

HTMLHelper::_('script', $this->script, array('version' => 'auto'));
HTMLHelper::_('stylesheet', 'com_rw/style.css', array('version' => 'auto', 'relative' => true));
?>
<script type="text/javascript">
    Joomla.submitbutton = function (task) {
        if (task === 'station.cancel' || document.formvalidator.isValid(document.id('adminForm'))) {*/
            Joomla.submitform(task, document.getElementById('adminForm'));
        }
    }
</script>
<form action="<?php echo RwHelper::getActionUrl(); ?>"
      method="post" name="adminForm" id="adminForm" xmlns="http://www.w3.org/1999/html" class="form-validate">
    <div class="row-fluid">
        <div class="span12 form-horizontal">
            <?php echo JHtml::_('bootstrap.startTabSet', 'myTab', array('active' => 'general')); ?>
            <div class="tab-content">
                <?php echo JHtml::_('bootstrap.addTab', 'myTab', 'general', JText::sprintf('COM_RW_BLANK_STATION_BASE')); ?>
                <div class="row-fluid">
                    <div class="span3">
                        <div>
                            <?php echo $this->loadTemplate('general'); ?>
                        </div>
                    </div>
                    <div class="span4">
                        <div style="text-align: center;">
                            <h4><?php echo JText::sprintf('COM_RW_BLANK_STATION_DIRECTIONS');?></h4>
                        </div>
                        <div>
                            <?php echo $this->loadTemplate('directions'); ?>
                        </div>
                    </div>
                    <div class="span5">
                        <div style="text-align: center;">
                            <h4><?php echo JText::sprintf('COM_RW_BLANK_STATION_DESCS');?></h4>
                        </div>
                        <div>
                            <?php if ($this->item->tppd != '1' && (int) $this->item->turnstiles == 0) echo $this->loadTemplate('descs'); ?>
                        </div>
                    </div>
                </div>
                <?php echo JHtml::_('bootstrap.endTab'); ?>
                <?php if ($this->item->id != null): ?>
                    <?php echo JHtml::_('bootstrap.addTab', 'myTab', 'turnstiles', JText::sprintf('COM_RW_BLANK_STATION_TURNSTILES')); ?>
                    <div class="row-fluid">
                        <div class="span12">
                            <div>
                                <?php echo $this->loadTemplate('turnstiles'); ?>
                            </div>
                        </div>
                    </div>
                    <?php echo JHtml::_('bootstrap.endTab'); ?>
                <?php endif;?>
            </div>
            <?php echo JHtml::_('bootstrap.endTabSet'); ?>
        </div>
        <div>
            <input type="hidden" name="task" value=""/>
            <?php echo JHtml::_('form.token'); ?>
        </div>
    </div>
</form>

