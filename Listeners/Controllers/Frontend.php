<?php declare(strict_types=1);

/**
 * Einrichtungshaus Ostermann GmbH & Co. KG - Registration Validation
 *
 * @package   OstRegistrationValidation
 *
 * @author    Eike Brandt-Warneke <e.brandt-warneke@ostermann.de>
 * @copyright 2019 Einrichtungshaus Ostermann GmbH & Co. KG
 * @license   proprietary
 */

namespace OstRegistrationValidation\Listeners\Controllers;

use Enlight_Event_EventArgs as EventArgs;
use Enlight_Controller_Action as Controller;

class Frontend
{
    /**
     * ...
     *
     * @var array
     */
    private $configuration;

    /**
     * ...
     *
     * @var string
     */
    private $viewDir;

    /**
     * ...
     *
     * @param array $configuration
     * @param string $viewDir
     */
    public function __construct($configuration, $viewDir)
    {
        // set params
        $this->configuration = $configuration;
        $this->viewDir = $viewDir;
    }

    /**
     * ...
     *
     * @param EventArgs $arguments
     */
    public function onPreDispatch(EventArgs $arguments)
    {
        // get the controller
        /* @var $controller Controller */
        $controller = $arguments->get('subject');

        // get parameters
        $view = $controller->View();

        // add template dir
        $view->addTemplateDir($this->viewDir);

        // assign configuration
        $view->assign('ostRegistrationValidationConfiguration', $this->configuration);
    }
}
