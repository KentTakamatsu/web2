<?php
/**
 *  {$action_name}.php
 *
 *  @author     {$author}
 *  @package    Gree1
 *  @version    $Id$
 */
chdir(dirname(__FILE__));
require_once '{$dir_app}/Gree1_Controller.php';

ini_set('max_execution_time', 0);

Gree1_Controller::main_CLI('Gree1_Controller', '{$action_name}');
?>
