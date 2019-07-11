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
                    <?php echo JText::sprintf('JTOOLBAR_EDIT');?>
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
                        echo JHtml::link($url, JText::sprintf('JTOOLBAR_EDIT'));
                        ?>
                    </td>
                    <td>
                        <?php
                        $url = JRoute::_("index.php?option=com_rw&amp;task=desc.delete&amp;id={$desc['id']}&amp;return={$this->return}");
                        $r = base64_encode("index.php?option=com_rw&view=station&layout=edit&id={$this->item->id}");
                        $act = JRoute::_("index.php?option=com_rw&amp;task=descs.delete");
                        ?>
                        <form action="<?php echo $act;?>" method="post">
                            <input type="hidden" name="cid[]" value="<?php echo $desc['id'];?>">
                            <input type="hidden" name="ret" value="<?php echo $r;?>">
                            <?php echo JHtml::_('form.token');?>
                            <button type="submit" class="btn btn-danger btn-sm"><?php echo JText::sprintf('COM_RW_ACTION_REMOVE_DESC');?></button>
                        </form>
                    </td>
                </tr>
            <?php endforeach;?>
        </tbody>
    </table>
<?php endif;?>
