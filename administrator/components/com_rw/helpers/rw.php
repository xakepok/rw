<?php
defined('_JEXEC') or die;

class RwHelper
{
	public function addSubmenu($vName)
	{
        JHtmlSidebar::addEntry(JText::sprintf('COM_RW_MENU_PAYMENTS'), "index.php?option=com_rw&view=payments", $vName == 'payments');
        JHtmlSidebar::addEntry(JText::sprintf('COM_RW_MENU_STATIONS'), "index.php?option=com_rw&view=stations", $vName == 'stations');
        JHtmlSidebar::addEntry(JText::sprintf('COM_RW_MENU_DIRECTIONS'), "index.php?option=com_rw&view=directions", $vName == 'directions');
        JHtmlSidebar::addEntry(JText::sprintf('COM_RW_MENU_REGIONS'), "index.php?option=com_rw&view=regions", $vName == 'regions');
        JHtmlSidebar::addEntry(JText::sprintf('COM_RW_MENU_COUNTRIES'), "index.php?option=com_rw&view=countries", $vName == 'countries');
	}

    /**
     * Работает ли касса на станции в данный момент
     * @param string $mask временная маска
     * @param JDate $time_1 время начала работы кассы
     * @param JDate $time_2 время конца работы кассы
     * @return bool
     * @since 1.0.2.6
     */
    static function isDescWorkedNow(string $mask, JDate $time_1, JDate $time_2): bool
    {
        $result = false;
        $day = JDate::getInstance();
        $dayOfWeek = (int) $day->format("w");
        if (substr($mask, $dayOfWeek, 1) === '1') {
            $open = $time_1->getTimestamp();
            $close = $time_2->getTimestamp();
            $now = $day->getTimestamp();
            if ($open <= $now && $now <= $close) $result = true;
        }
        return $result;
    }

    /**
     * Продлевает членство в клубе определённого юзера
     * @param int $userID ID юзера
     * @since 1.0.1.8
     */
    public static function addClub(int $userID): void
    {
        $db =& JFactory::getDbo();
        $query = "INSERT INTO `#__rw_club` (userID, expire) VALUES ({$userID}, current_timestamp + interval 1 month) on duplicate key update expire = expire + interval 1 month";
        $db->setQuery($query)->execute();
        $params = JComponentHelper::getParams('com_rw');
        $userGroups = JUserHelper::getUserGroups($userID);
        $groupMembers = $params->get('club_group_members');
        $groupNotMembers = $params->get('club_group_no_members');
        if (!in_array($groupMembers, $userGroups)) JUserHelper::addUserToGroup($userID, $groupMembers);
        if (in_array($groupNotMembers, $userGroups)) JUserHelper::removeUserFromGroup($userID, $groupNotMembers);
	}

    /**
     * Параметры лога
     * @return array
     * @since 1.0.1.8
     */
    public static function getLogOptions(): array
    {
        return array(
            'text_file' => 'error.php',
            'text_file_path' => null,
            'text_file_no_php' => false,
            'text_entry_format' => ''
        );
	}

    /**
     * Возвращает timestamp, до которой активно членство в клубе, либо false, если юзер не в клубе
     * @return bool|mixed
     * @since 1.0.2.0
     */
    public static function isClub()
    {
        if (JFactory::getUser()->guest) return false;
        $userID = JFactory::getUser()->id;
        $db =& JFactory::getDbo();
        $query = $db->getQuery(true);
        $query
            ->select("`expire`")
            ->from("`#__rw_club`")
            ->where("`userID` = {$userID}")
            ->where("`expire` > current_timestamp");
        $result = $db->setQuery($query)->loadResult();
        return $result ?? false;
	}

    /**
     * @param int $stationID ID станции
     * @param bool $advanced подробная информация
     * @return array
     * @since 1.0.0.5
     */
	public static function getStationDirections(int $stationID = 0, bool $advanced = false): array
    {
        if ($stationID == 0) return array();
        $db =& JFactory::getDbo();
        $query = $db->getQuery(true);
        $query
            ->select("`sd`.`id`, `sd`.`directionID`")
            ->from("`#__rw_station_directions` as `sd`")
            ->where("`sd`.`stationID` = {$stationID}");
        if ($advanced) {
            $query
                ->select("`d`.`title` as `direction`")
                ->select("`sd`.`indexID`, `sd`.`zoneID`, `sd`.`level`, `sd`.`new_level`, `sd`.`distance`, `sd`.`default_schedule`")
                ->leftJoin("`#__rw_directions` as `d` on `d`.`id` = `sd`.`directionID`");
        }
        return $db->setQuery($query)->loadAssocList() ?? array();
    }

    /**
     * Воввращает ID пункта меню по алиасу
     * @param string $alias алиса
     * @param string $menutype тип меню
     * @param string $component $option компонента
     * @return int
     * @since 1.0.2.3
     */
    public static function getMenuItemId(string $alias, string $component = 'com_rw', string $menutype = 'mainmenu'): int
    {
        $db =& JFactory::getDbo();
        $query = $db->getQuery(true);
        $menutype = $db->q($menutype);
        $alias = $db->q($alias);
        $componentID = JComponentHelper::getComponent($component)->id;
        $query
            ->select("id")
            ->from("#__menu")
            ->where("`component_id` = {$componentID}")
            ->where("`menutype` = {$menutype}")
            ->where("`alias` = {$alias}");
        return (int) $db->setQuery($query, 0, 1)->loadResult() ?? 0;
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
