<?php
defined('_JEXEC') or die;
use Joomla\CMS\MVC\View\HtmlView;

class RwViewDirection extends HtmlView {
    protected $item, $form, $script, $id, $isAdmin, $fieldset;

    public function display($tmp = null) {
        $this->form = $this->get('Form');
        $this->item = $this->get('Item');
        $this->script = $this->get('Script');

        $this->addToolbar();
        $this->setDocument();

        parent::display($tmp);
    }

    protected function addToolbar() {
        JFactory::getApplication()->input->set('hidemainmenu', true);
        $title = $this->item->title ?? JText::sprintf('COM_RW_TITLE_ADDING_DIRECTION');

        JToolbarHelper::title($title, '');
	    JToolBarHelper::apply('direction.apply', 'JTOOLBAR_APPLY');
        JToolbarHelper::save('direction.save', 'JTOOLBAR_SAVE');
        JToolbarHelper::cancel('direction.cancel', 'JTOOLBAR_CLOSE');
    }

    protected function setDocument() {
        JHtml::_('bootstrap.framework');
    }
}