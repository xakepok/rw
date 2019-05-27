<?php
use Joomla\CMS\MVC\View\HtmlView;

defined('_JEXEC') or die;

class RwViewStation extends HtmlView
{
    protected $station;
    public function display($tpl = null)
    {
        $this->station = $this->get('Station');
        $this->prepare();
        return parent::display($tpl);
    }

    private function prepare(): void
    {
        if ($this->station->id == null) {
            $this->_layout = 'error';
            return;
        }
        $this->setDocumentTitle($this->station->station);
    }
}