<?php
defined('_JEXEC') or die;
?>
<div>
    <?php
    $url = JRoute::_("index.php?option=com_rw&amp;task=desc.add&amp;stationID={$this->item->id}&amp;return={$this->return}");
    echo JHtml::link($url, JText::sprintf('COM_RW_ACTION_ADD_DESC'));
    ?>
</div>
<?php if ($this->item->id != null): ?>
    <table class="table table-striped" title="<?php echo JText::sprintf('COM_RW_BLANK_STATION_DESCS');?>">
        <thead>
            <tr>
                <th>
                    <?php echo JText::sprintf('COM_RW_HEAD_DESC_TIME_MASK');?>
                </th>
                <th>
                    <?php echo JText::sprintf('COM_RW_HEAD_DESC_TIME_1');?>
                </th>
                <th>
                    <?php echo JText::sprintf('COM_RW_HEAD_DESC_TIME_2');?>
                </th>
                <th>
                    <?php echo JText::sprintf('COM_RW_ACTION_EDIT_DESC');?>
                </th>
                <th>
                    <?php echo JText::sprintf('COM_RW_ACTION_REMOVE_DESC');?>
                </th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($this->item->descs as $desc) :?>
                <tr>
                    <td>
                        <?php echo $desc['time_mask'];?>
                    </td>
                    <td>
                        <?php echo $desc['time_1'];?>
                    </td>
                    <td>
                        <?php echo $desc['time_2'];?>
                    </td>
                    <td>
                        <?php
                        $url = JRoute::_("index.php?option=com_rw&amp;task=desc.edit&amp;id={$desc['id']}&amp;return={$this->return}");
                        echo JHtml::link($url, JText::sprintf('COM_RW_ACTION_EDIT_DESC'));
                        ?>
                    </td>
                    <td>
                        <?php
                        $url = JRoute::_("index.php?option=com_rw&amp;task=desc.delete&amp;id={$desc['id']}&amp;return={$this->return}");
                        echo JHtml::link($url, JText::sprintf('COM_RW_ACTION_REMOVE_DESC'));
                        ?>
                    </td>
                </tr>
            <?php endforeach;?>
        </tbody>
    </table>
<?php endif;?>
