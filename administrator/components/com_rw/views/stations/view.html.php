<?php
use Joomla\CMS\Language\Text;
use Joomla\CMS\MVC\View\HtmlView;

defined('_JEXEC') or die;

class RwViewStations extends HtmlView
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

		// Show the sidebar
		$this->helper = new RwHelper();
		$this->helper->addSubmenu('stations');
		$this->sidebar = JHtmlSidebar::render();

		// Display it all
		return parent::display($tpl);
	}

	private function toolbar()
	{
		JToolBarHelper::title(Text::_('COM_RW_MENU_STATIONS'), '');

        if (RwHelper::canDo('core.create'))
        {
            JToolbarHelper::addNew('station.add');
        }
        if (RwHelper::canDo('core.edit'))
        {
            JToolbarHelper::editList('station.edit');
        }
        if (RwHelper::canDo('core.delete'))
        {
            JToolbarHelper::deleteList('COM_RW_QUESTION_DELETE_STATION', 'stations.delete');
        }
		if (RwHelper::canDo('core.admin'))
		{
			JToolBarHelper::preferences('com_projects');
		}
	}
}
