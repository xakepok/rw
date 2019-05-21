<?php
use Joomla\CMS\MVC\View\HtmlView;

defined('_JEXEC') or die;

class RwViewDirection extends HtmlView
{
    protected $direction;
    public function display($tpl = null)
    {
        $this->direction = $this->get('Direction');
        $this->prepare();
        return parent::display($tpl);
    }

    private function prepare(): void
    {
        if ($this->direction->id == null) {
            $this->_layout = 'error';
            return;
        }
        $this->setDocumentTitle($this->direction->title);
    }
}
