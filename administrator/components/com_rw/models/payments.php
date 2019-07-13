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
                'p.id', 'p.dat', 'p.amount', 'variant', 'p.amount', 'p.withdraw_amount', 'p.operationID', 'p.label', 'p.sender', 'search', 'u.name',
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
            ->select("u.name as user")
            ->from("`#__payments` p")
            ->leftJoin("`#__users` u on u.id = p.userID");

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


        /* Сортировка */
        $orderCol  = $this->state->get('list.ordering');
        $orderDirn = $this->state->get('list.direction');
        $query->order($db->escape($orderCol . ' ' . $orderDirn));

        return $query;
    }

    public function getItems()
    {
        $items = parent::getItems();
        $result = array();
        if (empty($items)) return $result;
        foreach ($items as $item) {
            $arr = array();
            $dat = JDate::getInstance($item->dat);
            $arr['id'] = $item->id;
            $arr['dat'] = $dat->format("d.m.Y");
            $arr['user'] = $item->user;
            $arr['amount'] = JText::sprintf('COM_RW_AMOUNT_RUB', $item->amount);
            $arr['withdraw_amount'] = JText::sprintf('COM_RW_AMOUNT_RUB', $item->withdraw_amount);
            $arr['operationID'] = $item->operationID;
            $arr['label'] = $item->label;
            $arr['variant'] = JText::sprintf("COM_RW_PAYMENT_VARIANT_{$item->variant}");
            $result[] = $arr;
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
        parent::populateState($ordering, $direction);
    }

    protected function getStoreId($id = '')
    {
        $id .= ':' . $this->getState('filter.search');
        $id .= ':' . $this->getState('filter.variant');
        return parent::getStoreId($id);
    }
}
