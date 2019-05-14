<?php
defined('_JEXEC') or die;
use Joomla\CMS\MVC\View\HtmlView;

class RwViewStationdir extends HtmlView {
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
        $title = JText::sprintf('COM_RW_MENU_STATION_DIRECTION_ASSET');

        JToolbarHelper::title($title, '');
	    JToolBarHelper::apply('stationdir.apply', 'JTOOLBAR_APPLY');
        JToolbarHelper::save('stationdir.save', 'JTOOLBAR_SAVE');
        JToolbarHelper::cancel('stationdir.cancel', 'JTOOLBAR_CLOSE');
    }

    protected function setDocument() {
        JHtml::_('bootstrap.framework');
    }
}