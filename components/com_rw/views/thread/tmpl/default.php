<?php
use Joomla\CMS\HTML\HTMLHelper;

defined('_JEXEC') or die;

HTMLHelper::_('script', 'com_rw/script.js', array('version' => 'auto', 'relative' => true));
HTMLHelper::_('stylesheet', 'com_rw/style.css', array('version' => 'auto', 'relative' => true));
?>

<div class="row">
    <div class="col-lg-3 text-left">
        <h2><?php echo $this->thread['number'];?></h2>
    </div>
    <div class="col-lg-9 text-right">
        <h2><?php echo $this->thread['title'];?></h2>
    </div>
</div>
<div>
    <table class="table table-sm">
        <thead>
            <tr>
                <th><?php echo JText::sprintf('COM_RW_HEAD_THREAD_STATION');?></th>
                <th><?php echo JText::sprintf('COM_RW_HEAD_THREAD_ARRIVAL_SHORT');?></th>
                <th><?php echo JText::sprintf('COM_RW_HEAD_THREAD_DEPARTURE_SHORT');?></th>
                <th><?php echo JText::sprintf('COM_RW_HEAD_THREAD_DESCS');?></th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($this->thread['stops'] as $stop): ?>
                <tr>
                    <td>
                        <?php echo $stop['name'];?>
                    </td>
                    <td>
                        <?php echo $stop['arrival'];?>
                    </td>
                    <td>
                        <?php echo $stop['departure'];?>
                    </td>
                    <td class="<?php echo $stop['class'] ?? 'desc_not_worked';?>">
                        <?php echo (!empty($stop['descs'])) ? $stop['descs'] : JText::sprintf('COM_RW_HEAD_THREAD_DESC_IS_NOT_WORKED');?>
                    </td>
                </tr>
            <?php endforeach;?>
        </tbody>
    </table>
</div>

<?php if (!RwHelper::isClub()): ?>
    <div class="modal fade" id="modal_desc_ad" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalCenterTitle"><?php echo JText::sprintf('COM_RW_MODAL_TITLE_DESCS');?></h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">X</span>
                    </button>
                </div>
                <div class="modal-body">
                    <img src="/images/super-zero.png" alt="Супер-ноль" class="w-100" />
                    Информация о времени работы касс находится на сервере, обслуживание котрого стоит денег. Авторизуйтесь на сайте, сделайте донат и вы получите абонемент "Супер ноль", владельцам которого доступна информация о кассах и ТППД. Более того, сайт развивается и постепенно владельцам абонемента будут доступны интерактивная карта и другие функции.<br>
                    Стоимость абонемента всего 36р в месяц, как стоимость проезда по Москве на электричках. Все деньги идут на оплату сервера.<br>
                    Приобретая абонемент, вы помогаете и себе, и любимому собакингу.
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal"><?php echo JText::sprintf('COM_RW_ACTION_CLOSE');?></button>
                </div>
            </div>
        </div>
    </div>
<?php endif;?>