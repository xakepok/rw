<?php
use Joomla\CMS\MVC\View\HtmlView;

defined('_JEXEC') or die;

class RwViewPayments extends HtmlView
{
	protected $helper;
	protected $sidebar = '';
	public $items, $pagination, $uid, $state, $links, $filterForm, $activeFilters;

	public function display($tpl = null)
	{
	    $this->items = $this->get('Items');
	    $this->pagination = $this->get('Pagination');
	    $this->state = $this->get('State');
        $this->filterForm = $this->get('FilterForm');
        $this->activeFilters = $this->get('ActiveFilters');

        // Show the toolbar
		$this->toolbar();
		$this->filters();

		// Show the sidebar
		$this->helper = new RwHelper();
		$this->helper->addSubmenu('payments');
		$this->sidebar = JHtmlSidebar::render();

		// Display it all
		return parent::display($tpl);
	}

	private function filters()
    {
        $this->filterForm->setFieldAttribute('dat_1', 'default', date("Y-m-01"), 'filter');
        $this->filterForm->setFieldAttribute('dat_2', 'default', date("Y-m-d"), 'filter');
    }

	private function toolbar()
	{
		JToolBarHelper::title(JText::sprintf('COM_RW_MENU_PAYMENTS'), '');

        if (RwHelper::canDo('core.delete'))
        {
            JToolbarHelper::deleteList('COM_RW_QUESTION_DELETE_PAYMENT', 'payments.delete');
        }
		if (RwHelper::canDo('core.admin'))
		{
			JToolBarHelper::preferences('com_projects');
		}
	}
}
