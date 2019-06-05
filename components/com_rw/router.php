<?php
use Joomla\CMS\Component\Router\RouterView;
use Joomla\CMS\Component\Router\Rules\MenuRules;
use Joomla\CMS\Component\Router\Rules\NomenuRules;
use Joomla\CMS\Component\Router\Rules\StandardRules;
use Joomla\CMS\Component\Router\RouterViewConfiguration;

class RwRouter extends RouterView
{
    public function __construct($app = null, $menu = null)
    {
        $directions = new RouterViewconfiguration('directions');
        $this->registerView($directions);
        $direction = new RouterViewconfiguration('direction');
        $direction->setKey('id');
        $this->registerView($direction);
        parent::__construct($app, $menu);

        $this->attachRule(new MenuRules($this));
        $this->attachRule(new StandardRules($this));
        $this->attachRule(new NomenuRules($this));
    }

    public function getDirectionsSegment($id, $query)
    {
        return $this->getDirectionSegment($id, $query);
    }

    public function getDirectionSegment($id, $query)
    {
        //exit(var_dump($query));
        $segment = array((int) $id => $query['view'] . ':' . $id);
        return $segment;
    }

    public function getDirectionId($segment, $query)
    {
        if (isset($query['id']))
        {
            return (int) $segment;
        }
        return false;
    }
}
