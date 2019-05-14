<?php
defined('_JEXEC') or die;
?>
<div>
    <?php
    $url = JRoute::_("index.php?option=com_rw&amp;task=stationdir.add&amp;stationID={$this->item->id}&amp;return={$this->return}");
    echo JHtml::link($url, JText::sprintf('COM_RW_ACTION_ADD_DIRECTION'));
    ?>
</div>
<?php if ($this->item->id != null && count($this->item->directions) > 1): ?>
    <table class="table table-striped" title="<?php echo JText::sprintf('COM_RW_BLANK_STATION_DIRECTIONS');?>">
        <thead>
            <tr>
                <th>
                    <?php echo JText::sprintf('COM_RW_HEAD_DIRECTION');?>
                </th>
                <th>
                    <?php echo JText::sprintf('COM_RW_HEAD_INDEX_ID');?>
                </th>
                <th>
                    <?php echo JText::sprintf('COM_RW_HEAD_ZONE_ID');?>
                </th>
                <th>
                    <?php echo JText::sprintf('COM_RW_HEAD_ZONE_DISTANCE_SHORT');?>
                </th>
                <th>
                    <?php echo JText::sprintf('COM_RW_HEAD_ZONE_DEFAULT_SCHEDULE_SHORT');?>
                </th>
                <th>
                    <?php echo JText::sprintf('COM_RW_ACTION_EDIT');?>
                </th>
                <th>
                    <?php echo JText::sprintf('COM_RW_ACTION_DELETE');?>
                </th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($this->item->directions as $direction) :?>
                <tr>
                    <td>
                        <?php echo $direction['direction'];?>
                    </td>
                    <td>
                        <?php echo $direction['indexID'];?>
                    </td>
                    <td>
                        <?php echo $direction['zoneID'];?>
                    </td>
                    <td>
                        <?php echo $direction['distance'];?>
                    </td>
                    <td>
                        <?php echo $direction['default_schedule'];?>
                    </td>
                    <td>
                        <?php
                        $url = JRoute::_("index.php?option=com_rw&amp;task=stationdir.edit&amp;id={$direction['id']}&amp;return={$this->return}");
                        echo JHtml::link($url, JText::sprintf('COM_RW_ACTION_EDIT_DIRECTION_ASSET'));
                        ?>
                    </td>
                    <td>
                        <?php
                        $url = JRoute::_("index.php?option=com_rw&amp;task=stationdir.delete&amp;id={$direction['id']}&amp;return={$this->return}");
                        echo JHtml::link($url, JText::sprintf('COM_RW_ACTION_REMOVE_DIRECTION_ASSET'));
                        ?>
                    </td>
                </tr>
            <?php endforeach;?>
        </tbody>
    </table>
<?php endif;?>
<?php if ($this->item->id != null && count($this->item->directions) == 1): ?>
    <table class="table table-striped" title="<?php echo JText::sprintf('COM_RW_BLANK_STATION_DIRECTIONS');?>">
        <tbody>
            <tr>
                <td><?php echo JText::sprintf('COM_RW_HEAD_DIRECTION');?></td>
                <td><?php echo $this->item->directions[0]['direction'];?></td>
            </tr>
            <tr>
                <td><?php echo JText::sprintf('COM_RW_HEAD_INDEX_ID');?></td>
                <td><?php echo $this->item->directions[0]['indexID'];?></td>
            </tr>
            <tr>
                <td><?php echo JText::sprintf('COM_RW_HEAD_ZONE_ID');?></td>
                <td><?php echo $this->item->directions[0]['zoneID'];?></td>
            </tr>
            <tr>
                <td><?php echo JText::sprintf('COM_RW_HEAD_ZONE_DISTANCE_SHORT');?></td>
                <td><?php echo $this->item->directions[0]['distance'];?></td>
            </tr>
            <tr>
                <td><?php echo JText::sprintf('COM_RW_HEAD_ZONE_DEFAULT_SCHEDULE_SHORT');?></td>
                <td><?php echo $this->item->directions[0]['default_schedule'];?></td>
            </tr>
            <tr>
                <td>
                    <?php
                    $url = JRoute::_("index.php?option=com_rw&amp;task=stationdir.edit&amp;id={$this->item->directions[0]['id']}&amp;return={$this->return}");
                    echo JHtml::link($url, JText::sprintf('COM_RW_ACTION_EDIT_DIRECTION_ASSET'));
                    ?>
                </td>
                <td>
                    <?php
                    $url = JRoute::_("index.php?option=com_rw&amp;task=stationdir.delete&amp;id={$this->item->directions[0]['id']}&amp;return={$this->return}");
                    echo JHtml::link($url, JText::sprintf('COM_RW_ACTION_REMOVE_DIRECTION_ASSET'));
                    ?>
                </td>
            </tr>
        </tbody>
    </table>
<?php endif;?>
