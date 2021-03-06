<?php
use Joomla\CMS\MVC\Model\ListModel;

defined('_JEXEC') or die;

class RwModelPayments extends ListModel
{
    public function __construct($config = array())
    {
        if (empty($config['filter_fields']))
        {
            $config['filter_fields'] = array(
                'p.id', 'p.dat', 'p.amount', 'variant', 'p.amount', 'p.withdraw_amount', 'p.operationID', 'p.label', 'p.sender', 'search', 'u.name', 'dat_1', 'dat_2', 'd.expire', 'club',
            );
        }
        parent::__construct($config);
    }

    protected function _getListQuery()
    {
        $db =& $this->getDbo();
        $query = $db->getQuery(true);
        $query
            ->select("p.id, p.dat, p.amount, p.withdraw_amount, p.operationID, p.label, p.variant")
            ->select("concat(u.f_name, ' ', u.l_name) as user, u.social_profile_link as `link`, u.avatar, u.region, u.city")
            ->select("c.expire")
            ->from("`#__payments` p")
            ->leftJoin("`#__plg_slogin_profile` u on u.user_id = p.userID")
            ->leftJoin("`#__rw_club` c on c.userID = p.userID");

        /* Фильтр */
        $search = $this->getState('filter.search');
        if (!empty($search)) {
            $search = $db->q("%{$search}%");
            $query->where("(`u`.`name` LIKE {$search} OR `p`.`operationID` LIKE {$search} OR `p`.`label` LIKE {$search})");
        }
        //Фильтр по типу платежа
        $variant = $this->getState('filter.variant');
        if (is_numeric($variant)) {
            $variant = $db->q($variant);
            $query->where("`p`.`variant` = {$variant}");
        }
        //Фильтр по наличию абонемента
        $club = $this->getState('filter.club');
        if (is_numeric($club)) {
            $operand = ($club == 1) ? ">" : "<";
            $query->where("c.expire {$operand} current_timestamp");
        }
        //Фильтр по периоду платежа
        $dat_1 = $this->getState('filter.dat_1');
        $dat_2 = $this->getState('filter.dat_2');
        if ($dat_1 == '') {
            $dat_1 = JDate::getInstance(date("Y-m-01") . "- 1 day");
        }
        else {
            $dat_1 = JDate::getInstance($dat_1 . "+3 hour");
        }
        if ($dat_2 == '') {
            $dat_2 = JDate::getInstance("+ 1 day +3 hour");
        }
        else {
            $dat_2 = JDate::getInstance($dat_2 . "+ 3 hour");
        }
        if ($dat_1->format("Y-m-d") == $dat_2->format("Y-m-d")) {
            $dat = $db->q("%{$dat_1->format("Y-m-d")}%");
            $query->where("p.dat LIKE {$dat}");
        }
        else {
            $dat_1 = $db->q($dat_1->format("Y-m-d"));
            $dat_2 = $db->q($dat_2->format("Y-m-d"));
            $query->where("`p`.`dat` BETWEEN {$dat_1} AND {$dat_2}");
        }

        /* Сортировка */
        $orderCol  = $this->state->get('list.ordering');
        $orderDirn = $this->state->get('list.direction');
        $query->order($db->escape($orderCol . ' ' . $orderDirn));

        return $query;
    }

    public function getItems()
    {
        $items = parent::getItems();
        $result = array('payments' => array(), 'sum' => (float) 0);
        if (empty($items)) return $result;
        foreach ($items as $item) {
            $arr = array();
            $dat = JDate::getInstance($item->dat);
            $arr['id'] = $item->id;
            $arr['dat'] = $dat->format("d.m.Y");
            $arr['user'] = JHtml::link($item->link, $item->user, array('target' => '_blank'));
            $arr['amount'] = JText::sprintf('COM_RW_AMOUNT_RUB', $item->amount);
            $arr['withdraw_amount'] = JText::sprintf('COM_RW_AMOUNT_RUB', $item->withdraw_amount);
            $arr['operationID'] = $item->operationID;
            $avatar = "images/avatar/{$item->avatar}";
            $arr['avatar'] = JHtml::image($avatar, $item->user, array('width' => '64px'));
            $arr['label'] = $item->label;
            $arr['region'] = $item->region;
            $arr['city'] = $item->city;
            $arr['variant'] = JText::sprintf("COM_RW_PAYMENT_VARIANT_{$item->variant}");
            $expire = ($item->expire !== null) ? JDate::getInstance($item->expire . "+3 hour") : JText::sprintf('COM_RW_HEAD_PAYMENT_IS_EXPIRE');
            $arr['expire'] = $expire->format("d.m.Y H:i");
            $result['payments'][] = $arr;
            $result['sum'] += (float) $item->amount;
        }
        return $result;
    }

    /* Сортировка по умолчанию */
    protected function populateState($ordering = 'p.dat', $direction = 'desc')
    {
        $search = $this->getUserStateFromRequest($this->context . '.filter.search', 'filter_search');
        $this->setState('filter.search', $search);
        $variant = $this->getUserStateFromRequest($this->context . '.filter.variant', 'filter_variant');
        $this->setState('filter.variant', $variant);
        $dat_1 = $this->getUserStateFromRequest($this->context . '.filter.dat_1', 'filter_dat_1');
        $this->setState('filter.dat_1', $dat_1);
        $dat_2 = $this->getUserStateFromRequest($this->context . '.filter.dat_2', 'filter_dat_2');
        $this->setState('filter.dat_2', $dat_2);
        $club = $this->getUserStateFromRequest($this->context . '.filter.club', 'filter_club');
        $this->setState('filter.club', $club);
        parent::populateState($ordering, $direction);
    }

    protected function getStoreId($id = '')
    {
        $id .= ':' . $this->getState('filter.search');
        $id .= ':' . $this->getState('filter.variant');
        $id .= ':' . $this->getState('filter.dat_1');
        $id .= ':' . $this->getState('filter.dat_2');
        $id .= ':' . $this->getState('filter.club');
        return parent::getStoreId($id);
    }
}
