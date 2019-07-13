<?php
defined('_JEXEC') or die;
$listOrder    = $this->escape($this->state->get('list.ordering'));
$listDirn    = $this->escape($this->state->get('list.direction'));
?>
<tr>
    <th style="width: 1%;">
        <?php echo JHtml::_('grid.checkall'); ?>
    </th>
    <th>
        <?php echo JHtml::_('searchtools.sort', 'COM_RW_HEAD_PAYMENT_DATE', 'p.dat', $listDirn, $listOrder); ?>
    </th>
    <th>
        <?php echo JHtml::_('searchtools.sort', 'COM_RW_HEAD_PAYMENT_USER', 'u.name', $listDirn, $listOrder); ?>
    </th>
    <th>
        <?php echo JHtml::_('searchtools.sort', 'COM_RW_HEAD_PAYMENT_AMOUNT', 'p.amount', $listDirn, $listOrder); ?>
    </th>
    <th>
        <?php echo JHtml::_('searchtools.sort', 'COM_RW_HEAD_PAYMENT_WITHDRAW_AMOUNT', 'p.withdraw_amount', $listDirn, $listOrder); ?>
    </th>
    <th>
        <?php echo JHtml::_('searchtools.sort', 'COM_RW_HEAD_PAYMENT_LABEL', 'p.label', $listDirn, $listOrder); ?>
    </th>
    <th>
        <?php echo JText::sprintf('COM_RW_HEAD_PAYMENT_VARIANT');?>
    </th>
    <th>
        <?php echo JHtml::_('searchtools.sort', 'COM_RW_HEAD_PAYMENT_OPERATION_ID', 'p.operationID', $listDirn, $listOrder); ?>
    </th>
    <th style="width: 1%;">
        <?php echo JHtml::_('searchtools.sort', 'ID', 'id', $listDirn, $listOrder); ?>
    </th>
</tr>