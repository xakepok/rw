<?php
defined('_JEXEC') or die;
use Joomla\CMS\MVC\Model\BaseDatabaseModel;

class RwModelYarasp extends BaseDatabaseModel
{
    public function __construct($config = array())
    {
        $params = JComponentHelper::getParams('com_rw');
        $this->apikey = $params->get('yarasp_api_key', '');
        parent::__construct($config);
    }

    public function getRaspBetweenStations(int $from, int $to, string $dat = '', bool $transfers = false): array
    {
        $data = array();
        $result = array('threads' => array(), 'rasp' => array());
        $data['from'] = sprintf("s%d", $from);
        $data['to'] = sprintf("s%d", $to);
        $data['transfers'] = (!$transfers) ? 'false' : 'true';
        $data['transport_types'] = 'suburban';
        $data['offset'] = 0;
        $data['date'] = (!empty($dat)) ? $dat : JDate::getInstance()->format("Y-m-d");
        $data = $this->getParams($data);
        $need = true;
        while ($need)
        {
            $url = "https://api.rasp.yandex.net/v3.0/search/?" . http_build_query($data);
            $rasp = file_get_contents($url);
            $rasp = json_decode($rasp, true);
            $result['threads'] = array_merge($result['threads'], $rasp['segments']);
            $data['offset'] += 100;
            if ($rasp['pagination']['total'] < ($rasp['pagination']['offset'] + $rasp['pagination']['limit'])) $need = false;
        }
        foreach ($result['threads'] as $item) {
            $uid = $item['thread']['uid'];
            $result['rasp'][$uid] = $this->getRaspThread($uid);
        }

        return $result;
    }

    public function getRaspThread(string $uid): array
    {
        $data = array();
        $data['uid'] = $uid;
        $data = $this->getParams($data);
        $url = "https://api.rasp.yandex.net/v3.0/thread/?" . http_build_query($data);
        $rasp = file_get_contents($url);
        if ($rasp == null) exit(var_dump($uid));
        try {
            $rasp = json_decode($rasp, true);
            if (!isset($rasp['stops'])) exit(var_dump($rasp));;
        }
        catch (Exception $exception) {
            exit(var_dump($rasp));
        }
        return $rasp;
    }

    private function getParams(array $data): array
    {
        $arr = array();
        $arr['apikey'] = $this->apikey;
        $arr['format'] = 'json';
        $arr['lang'] = 'ru_RU';
        return array_merge($arr, $data);
    }

    private $apikey;
}