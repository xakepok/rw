<?php
use Joomla\CMS\MVC\View\HtmlView;

defined('_JEXEC') or die;

class RwViewSchedule extends HtmlView
{
    protected $schedule, $device;
    public function display($tpl = null)
    {
        $this->schedule = $this->get('Schedule');
        $this->device = (!JFactory::getApplication()->client->mobile) ? 'desktop' : 'mobile';
        $this->prepare();
        return parent::display($tpl);
    }

    private function prepare(): void
    {

    }
}
