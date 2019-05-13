<?php
// Запрет прямого доступа.
defined('_JEXEC') or die;
foreach ($this->items as $i => $item) :
    ?>
    <tr class="row0">
        <td class="center">
            <?php echo JHtml::_('grid.id', $i, $item['id']); ?>
        </td>
        <td>
            <?php echo $item['station'];?>
        </td>
        <td>
            <?php echo $item['yandex'];?>
        </td>
        <td>
            <?php echo $item['esr'];?>
        </td>
        <td>
            <?php echo $item['express'];?>
        </td>
        <td>
            <?php echo $item['directions'];?>
        </td>
        <td>
            <?php echo $item['turnstiles'];?>
        </td>
        <td>
            <?php echo $item['region'];?>
        </td>
        <td>
            <?php echo $item['country'];?>
        </td>
        <td>
            <?php echo $item['id'];?>
        </td>
    </tr>
<?php endforeach; ?>