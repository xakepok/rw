<?php
// Запрет прямого доступа.
defined('_JEXEC') or die;
foreach ($this->items as $i => $item) :
    ?>
    <tr class="row0">
        <td>
            <?php echo $item['dat'];?>
        </td>
        <td>
            <?php echo $item['withdraw_amount'];?>
        </td>
        <td>
            <?php echo $item['variant'];?>
        </td>
        <td>
            <?php echo $item['operationID'];?>
        </td>
    </tr>
<?php endforeach; ?>