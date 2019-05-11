<?php
defined('_JEXEC') or die;
use Joomla\CMS\MVC\View\HtmlView;

class RwViewCountry extends HtmlView {
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
        $title = $this->item->title ?? JText::sprintf('COM_RW_TITLE_ADDING_COUNTRY');

        JToolbarHelper::title($title, '');
	    JToolBarHelper::apply('country.apply', 'JTOOLBAR_APPLY');
        JToolbarHelper::save('country.save', 'JTOOLBAR_SAVE');
        JToolbarHelper::cancel('country.cancel', 'JTOOLBAR_CLOSE');
    }

    protected function setDocument() {
        JHtml::_('bootstrap.framework');
    }
}