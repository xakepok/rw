<?php
defined('_JEXEC') or die;
$listOrder    = $this->escape($this->state->get('list.ordering'));
$listDirn    = $this->escape($this->state->get('list.direction'));
?>
<tr>
    <th>
        <?php echo JHtml::_('searchtools.sort', 'COM_RW_HEAD_PAYMENT_DATE', 'p.dat', $listDirn, $listOrder); ?>
    </th>
    <th>
        <?php echo JHtml::_('searchtools.sort', 'COM_RW_HEAD_PAYMENT_WITHDRAW_AMOUNT', 'p.withdraw_amount', $listDirn, $listOrder); ?>
    </th>
    <th>
        <?php echo JText::sprintf('COM_RW_HEAD_PAYMENT_VARIANT');?>
    </th>
    <th>
        <?php echo JHtml::_('searchtools.sort', 'COM_RW_HEAD_PAYMENT_OPERATION_ID', 'p.operationID', $listDirn, $listOrder); ?>
    </th>
</tr>