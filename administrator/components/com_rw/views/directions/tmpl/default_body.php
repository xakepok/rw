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
            <?php echo $item['link'];?>
        </td>
        <td>
            <?php echo $item['is_cocon'];?>
        </td>
        <td>
            <span style="background-color: <?php echo $item['color'];?>; color: <?php echo $item['font'];?>"><?php echo $item['title'];?></span>
        </td>
        <td>
            <?php echo $item['id'];?>
        </td>
    </tr>
<?php endforeach; ?>