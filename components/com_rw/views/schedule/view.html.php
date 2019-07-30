<?php
use Joomla\CMS\MVC\View\HtmlView;

defined('_JEXEC') or die;

class RwViewSchedule extends HtmlView
{
    protected $schedule, $device, $from, $to, $date;
    public function display($tpl = null)
    {
        $this->from = $this->get('From');
        $this->to = $this->get('To');
        $this->date = $this->get('Date');
        $this->schedule = $this->get('Schedule');
        $this->device = (!JFactory::getApplication()->client->mobile) ? 'desktop' : 'mobile';
        $this->prepare();
        return parent::display($tpl);
    }

    private function prepare(): void
    {
        $from = $this->schedule['stations'][$this->from]['station'];
        $to = $this->schedule['stations'][$this->to]['station'];

        $pathway = JFactory::getApplication()->getPathway();
        $title = JText::sprintf("COM_RW_PATHWAY_SCHEDULE_BETWEEN_A_B_DATE", $from, $to, JDate::getInstance($this->date)->format("d.m.Y"));
        $pathway->setItemName("0", $title);

        $this->setDocumentTitle($title);
    }
}
