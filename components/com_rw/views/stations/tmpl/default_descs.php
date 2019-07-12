<?php
defined('_JEXEC') or die;
foreach ($this->items as $item):
    if (!isset($item['descs'])) continue;
    ?>

<div class="modal fade" id="modal_desc_<?php echo $item['id'];?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalCenterTitle"><?php echo JText::sprintf('COM_RW_MODAL_TITLE_DESCS');?></h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">X</span>
                </button>
            </div>
            <div class="modal-body">
                <table class="table table-sm">
                    <tbody>
                        <?php foreach ($item['descs'] as $desc): ?>
                            <tr>
                                <td><?php echo $desc['time_mask'];?></td>
                                <td><?php echo $desc['time'];?></td>
                            </tr>
                        <?php endforeach;?>
                    </tbody>
                </table>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal"><?php echo JText::sprintf('COM_RW_ACTION_CLOSE');?></button>
            </div>
        </div>
    </div>
</div>
<?php endforeach;?>