<?php
use Joomla\CMS\MVC\View\HtmlView;

defined('_JEXEC') or die;

class RwViewStations extends HtmlView
{
    public $items, $pagination, $state, $direction, $rasp, $isClub;
    public function display($tpl = null)
    {
        $this->items = $this->get('Items');
        //$this->rasp = $this->get('Rasp');
        $this->isClub = RwHelper::isClub();
        $this->direction = $this->get('Direction');
        $this->pagination = $this->get('Pagination');
        $this->state = $this->get('State');
        return parent::display($tpl);
    }
}
