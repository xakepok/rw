<?php
use Joomla\CMS\MVC\View\HtmlView;

defined('_JEXEC') or die;

class RwViewThread extends HtmlView
{
    protected $thread, $device;
    public function display($tpl = null)
    {
        $this->thread = $this->get('Thread');
        $this->device = (!JFactory::getApplication()->client->mobile) ? 'desktop' : 'mobile';
        $this->prepare();
        return parent::display($tpl);
    }

    private function prepare(): void
    {
        if (empty($this->thread)) {
            $this->_layout = 'error';
            return;
        }
        $this->setDocumentTitle(sprintf("%s %s", $this->thread['number'], $this->thread['title']));
    }
}
