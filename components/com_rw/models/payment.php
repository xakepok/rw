<?php
defined('_JEXEC') or die;
use Joomla\CMS\MVC\Model\AdminModel;
use Joomla\CMS\Log\Logger\FormattedtextLogger;

class RwModelPayment extends AdminModel {
    public function getTable($name = 'Payments', $prefix = 'TableRw', $options = array())
    {
        return JTable::getInstance($name, $prefix, $options);
    }

    public function delete(&$pks)
    {
        return parent::delete($pks);
    }

    public function getItem($pk = null)
    {
        return parent::getItem($pk);
    }

    public function getForm($data = array(), $loadData = true)
    {
        $form = $this->loadForm(
            $this->option.'.payment', 'payment', array('control' => 'jform', 'load_data' => $loadData)
        );
        if (empty($form))
        {
            return false;
        }
        return $form;
    }

    protected function loadFormData()
    {
        $data = JFactory::getApplication()->getUserState($this->option.'.edit.payment.data', array());
        if (empty($data))
        {
            $data = $this->getItem();
        }

        return $data;
    }

    /**
     * Подготовка данных для вставки в базу платежей
     * @return array
     * @throws Exception
     * @since 1.0.1.8
     */
    public function getPaymentData(): array
    {
        $input = JFactory::getApplication()->input;
        $label = explode("_", $input->getString('label', '_'));

        $arr = array();
        $arr['id'] = null;
        $arr['userID'] = $label[1] ?? JUserHelper::getUserId('admin');
        $arr['amount'] = $input->getFloat('amount', '0.00');
        $arr['withdraw_amount'] = $input->getFloat('withdraw_amount', '0.00');
        $arr['operationID'] = $input->getString('operation_id', '0');
        $arr['label'] = $input->getString('label', '_');
        switch ($input->getString('notification_type', null)) {
            case 'p2p-incoming': {
                $arr['variant'] = 1;
                break;
            }
            case 'card-incoming': {
                $arr['variant'] = 0;
                break;
            }
            default: {
                $arr['variant'] = 2;
            }
        }
        return $arr;
    }

    /**
     * Проверка контрольной подписи в уведомлении
     * @return bool
     * @since 1.0.1.8
     * @throws Exception
     */
    public function checkSignature(): bool
    {
        $input = JFactory::getApplication()->input;
        $params = JComponentHelper::getParams($this->option);
        $secret = $params->get('yamoney_secret_key', null);
        $data = array();
        $data['notification_type'] = (string) $input->getString('notification_type');
        $data['operation_id'] = (string) $input->getString('operation_id');
        $data['amount'] = (string) $input->getString('amount');
        $data['currency'] = (string) $input->getString('currency');
        $data['datetime'] = (string) $input->getString('datetime');
        $data['sender'] = (string) $input->getString('sender');
        $data['codepro'] = (string) $input->getString('codepro');
        $data['notification_secret'] = (string) $secret;
        $string = implode('&', $data);
        $label = (string) $input->getString('label', '');
        $string .= "&";
        if (!empty($label)) $string .= $label;
        $string = sha1($string);
        $control = $input->getString('sha1_hash', null);
        $result = $string && $control;
        if (!$result) {
            $log = new JLogEntry('Bad payment signature', JLog::ALERT, $this->option, null, array('data' => $data, 'control' => $control));
            $logger = new FormattedtextLogger(RwHelper::getLogOptions());
            $logger->addEntry($log);
        }
        return $result;
    }

    public function provideService(): void
    {
        $input = JFactory::getApplication()->input;
        $label = $input->getString('label', '_');
        $label = explode("_", $label);
        $amount = $input->getFloat('withdraw_amount', 0);
        $service = $label[0];
        $userID = $label[1];
        if (!$this->checkService($service, (float) $amount)) {
            $log = new JLogEntry("Bad amount for {$service} - {$amount}", JLog::ALERT, $this->option, null, array('amount' => $amount));
            $logger = new FormattedtextLogger(RwHelper::getLogOptions());
            $logger->addEntry($log);
            return;
        }
        switch ($service)
        {
            case 'club': {
                RwHelper::addClub($userID);
                break;
            }
        }
    }

    private function checkService(string $service, float $amount): bool
    {
        $params = JComponentHelper::getParams($this->option);
        $cost = (float) $params->get("{$service}_price", 0);
        return ($cost === $amount);
    }

    public function save($data)
    {
        return parent::save($data);
    }

    protected function prepareTable($table)
    {
        $nulls = array('sender', 'label', 'operationID'); //Поля, которые NULL
        foreach ($nulls as $field)
        {
            if (!strlen($table->$field)) $table->$field = NULL;
        }
        parent::prepareTable($table);
    }

    protected function canEditState($record)
    {
        $user = JFactory::getUser();

        if (!empty($record->id))
        {
            return $user->authorise('core.edit.state', $this->option . '.payment.' . (int) $record->id);
        }
        else
        {
            return parent::canEditState($record);
        }
    }

    public function getScript()
    {
        return 'administrator/components/' . $this->option . '/models/forms/payment.js';
    }
}