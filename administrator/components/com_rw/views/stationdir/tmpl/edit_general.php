<?php
defined('_JEXEC') or die;
?>
<fieldset class="adminform">
    <div class="control-group form-inline">
        <?php foreach ($this->form->getFieldset('general') as $field) :
            echo $field->renderField();
        endforeach; ?>
    </div>
</fieldset>
