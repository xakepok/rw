<?php

class RwRouter extends JComponentRouterView
{
    public function __construct($app = null, $menu = null)
    {
        $directions = new JComponentRouterViewconfiguration('directions');
        $this->registerView($directions);
        $direction = new JComponentRouterViewconfiguration('direction');
        $direction->setKey('id');
        $this->registerView($direction);
        $station = new JComponentRouterViewconfiguration('station');
        $station->setKey('id');
        $this->registerView($station);
        parent::__construct($app, $menu);

        $this->attachRule(new JComponentRouterRulesMenu($this));
        $this->attachRule(new JComponentRouterRulesStandard($this));
        $this->attachRule(new JComponentRouterRulesNomenu($this));
    }

    public function getDirectionId($segment, $query)
    {
        return (int) $segment;
    }

    public function getDirectionSegment($id, $query)
    {
        unset($query['view']);
        return array($id);
    }

    public function build(&$query)
    {
        $segments = array();
        switch ($query['view'])
        {
            case 'stations': {
                $segments[] = $query['directionID'];
                unset($query['directionID']);
                break;
            }
            default: {
                $segments[] = $query['id'];
            }
        }
        unset($query['view'], $query['id']);
        return $segments;
    }

    public function parse(&$segments)
    {
        $menu = JFactory::getApplication()->getMenu('site')->getActive();
        $alias = $menu->alias;
        switch ($alias)
        {
            case 'stations': {
                $menu->query['directionID'] = $segments[0];
                break;
            }
            default: {
                $menu->query['id'] = $segments[0];
            }
        }
        return parent::parse($segments);
    }
}
