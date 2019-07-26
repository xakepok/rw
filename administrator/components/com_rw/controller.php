<?php
/**
 * @package    rw
 *
 * @author     anton@nazvezde.ru <your@email.com>
 * @copyright  A copyright
 * @license    GNU General Public License version 2 or later; see LICENSE.txt
 * @link       http://your.url.com
 */

use Joomla\CMS\MVC\Controller\BaseController;

defined('_JEXEC') or die;

/**
 * Rw Controller.
 *
 * @package  rw
 * @since    1.0
 */
class RwController extends BaseController
{
    public function display($cachable = false, $urlparams = array())
    {
        $view = $this->input->getString('view');
        if ($view === 'rw') {
            header("Location: index.php?option=com_rw&view=payments");
            jexit();
        }
        return parent::display($cachable, $urlparams);
    }
}
