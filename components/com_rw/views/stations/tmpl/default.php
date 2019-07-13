<?php

use Joomla\CMS\HTML\HTMLHelper;

defined('_JEXEC') or die;

HTMLHelper::_('script', 'com_rw/script.js', array('version' => 'auto', 'relative' => true));
HTMLHelper::_('stylesheet', 'com_rw/style.css', array('version' => 'auto', 'relative' => true));
HTMLHelper::_('script', '//cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js', array('version' => 'auto', 'relative' => true));
HTMLHelper::_('script', '//cdn.datatables.net/fixedcolumns/3.2.6/js/dataTables.fixedColumns.min.js', array('version' => 'auto', 'relative' => true));
HTMLHelper::_('script', 'com_rw/tdata.js', array('version' => 'auto', 'relative' => true));
HTMLHelper::_('stylesheet', '//cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css', array('version' => 'auto', 'relative' => true));
HTMLHelper::_('stylesheet', '//cdn.datatables.net/fixedcolumns/3.2.6/css/fixedColumns.dataTables.min.css', array('version' => 'auto', 'relative' => true));
?>
<h1><?php echo JText::sprintf('COM_RW_TITLE_DIRECTION', $this->direction); ?></h1>
<div class="container">
    <div class="row">
        <div class="col">
            <table class="table table-sm">
                <thead>
                <tr>
                    <th>
                        <?php echo JText::sprintf('COM_RW_HEAD_STATION_TITLE'); ?>
                    </th>
                    <th>
                        <?php echo JText::sprintf('COM_RW_HEAD_STATION_ZONE_ID'); ?>
                    </th>
                    <?php if (!JFactory::getApplication()->client->mobile): ?>
                        <th>
                            <?php echo JText::sprintf('COM_RW_HEAD_STATION_ZONE_DISTANCE'); ?>
                        </th>
                    <?php endif; ?>
                    <th>
                        <?php echo JText::sprintf('COM_RW_MODAL_TITLE_DESCS'); ?>
                    </th>
                    <th>
                        <?php echo JText::sprintf('COM_RW_HEAD_STATION_ZONE_TURNSTILES'); ?>
                    </th>
                </tr>
                </thead>
                <tbody>
                <?php foreach ($this->items as $item) : ?>
                    <tr>
                        <td><?php echo $item['station']; ?></td>
                        <td><?php echo $item['zoneID']; ?></td>
                        <?php if (!JFactory::getApplication()->client->mobile): ?>
                            <td><?php echo $item['distance']; ?></td>
                        <?php endif; ?>
                        <?php if ($this->isClub !== false): ?>
                            <td>
                                <?php if (isset($item['descs']) && $item['descs'][0]['tppd'] !== true && $item['descs'][0]['everyday'] !== true && $item['descs'][0]['no_desc'] !== true): ?>
                                    <a href="#" data-toggle="modal"
                                       data-target="#modal_desc_<?php echo $item['id']; ?>"><?php echo JText::sprintf('COM_RW_MODAL_TITLE_DESCS'); ?></a>
                                <?php endif; ?>
                                <?php if (isset($item['descs']) && $item['descs'][0]['tppd'] === true): ?>
                                    <?php echo JText::sprintf('COM_RW_DESC_TPPD'); ?>
                                <?php endif; ?>
                                <?php if (isset($item['descs']) && $item['descs'][0]['time_mask'] === null): ?>
                                    <?php echo JText::sprintf('COM_RW_DESC_UNKNOWN'); ?>
                                <?php endif; ?>
                                <?php if (isset($item['descs']) && $item['descs'][0]['everyday'] === true): ?>
                                    <?php echo JText::sprintf('COM_RW_DESC_TIME_MASK_EVERYDAY'); ?>
                                <?php endif; ?>
                                <?php if (isset($item['descs']) && $item['descs'][0]['no_desc'] === true): ?>
                                    <?php echo JText::sprintf('COM_RW_DESC_NO_DESC'); ?>
                                <?php endif; ?>
                            </td>
                        <?php endif; ?>
                        <?php if ($this->isClub === false): ?>
                            <td>
                                <a href="#" data-toggle="modal"
                                   data-target="#modal_desc_ad"><?php echo JText::sprintf('COM_RW_MODAL_TITLE_DESCS'); ?></a>
                            </td>
                        <?php endif; ?>
                        <td><?php echo $item['turnstiles']; ?></td>
                    </tr>
                <?php endforeach; ?>
                </tbody>
            </table>
        </div>
    </div>
    <div>
        <?php echo $this->loadTemplate('descs'); ?>
    </div>
</div>