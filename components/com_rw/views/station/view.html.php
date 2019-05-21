<?php
use Joomla\CMS\MVC\View\HtmlView;

defined('_JEXEC') or die;

class RwViewStation extends HtmlView
{
    protected $station;
    public function display($tpl = null)
    {
        $this->station = $this->get('Station');
        return parent::display($tpl);
    }
}
