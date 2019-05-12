<?php
defined('_JEXEC') or die;

class RwHelper
{
	public function addSubmenu($vName)
	{
		JHtmlSidebar::addEntry(JText::sprintf('COM_RW'), "index.php?option=com_rw&view=rw", $vName == 'rw');
        JHtmlSidebar::addEntry(JText::sprintf('COM_RW_MENU_STATIONS'), "index.php?option=com_rw&view=stations", $vName == 'stations');
        JHtmlSidebar::addEntry(JText::sprintf('COM_RW_MENU_DIRECTIONS'), "index.php?option=com_rw&view=directions", $vName == 'directions');
        JHtmlSidebar::addEntry(JText::sprintf('COM_RW_MENU_REGIONS'), "index.php?option=com_rw&view=regions", $vName == 'regions');
        JHtmlSidebar::addEntry(JText::sprintf('COM_RW_MENU_COUNTRIES'), "index.php?option=com_rw&view=countries", $vName == 'countries');
	}

    /**
     * Возвращает URL для обработки формы
     * @return string
     * @since 1.0.0.1
     * @throws
     */
    public static function getActionUrl(): string
    {
        $uri = JUri::getInstance();
        $query = $uri->getQuery();
        $client = (!JFactory::getApplication()->isClient('administrator')) ? 'site' : 'administrator';
        return JRoute::link($client, "index.php?{$query}");
    }

    /**
     * Возвращает текущий URL
     * @return string
     * @since 1.0.0.1
     * @throws
     */
    public static function getCurrentUrl(): string
    {
        $uri = JUri::getInstance();
        $query = $uri->getQuery();
        return "index.php?{$query}";
    }

    /**
     * Возвращает URL для возврата (текущий адрес страницы)
     * @return string
     * @since 1.0.0.1
     */
    public static function getReturnUrl(): string
    {
        $uri = JUri::getInstance();
        $query = $uri->getQuery();
        return base64_encode("index.php?{$query}");
    }

    /**
     * Возвращает URL для обработки формы левой панели
     * @return string
     * @since 1.0.0.1
     */
    public static function getSidebarAction():string
    {
        $return = self::getReturnUrl();
        return JRoute::_("index.php?return={$return}");
    }

    /**
     * Возвращает права доступа текущего пользователя
     * @param string $action требуемое право для проверки доступа
     * @return bool
     * @since 1.0.0.1
     */
    public static function canDo(string $action): bool
    {
        return JFactory::getUser()->authorise($action, 'com_rw');
    }

}
