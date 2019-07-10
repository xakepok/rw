<?php
use Joomla\CMS\MVC\View\HtmlView;

defined('_JEXEC') or die;

class RwViewStations extends HtmlView
{
    public $items, $pagination, $state, $direction, $rasp;
    public function display($tpl = null)
    {
        $this->items = $this->get('Items');
        //$this->rasp = $this->get('Rasp');
        $this->direction = $this->get('Direction');
        $this->pagination = $this->get('Pagination');
        $this->state = $this->get('State');
        return parent::display($tpl);
    }
}
