<?php
session_start();
require '../app/constants.php';
require APPLICATION_PATH . '../vendor/autoload.php';
$main = new \App\Core\Config(); //Bootstrap.php //Core //Loader

$routes = explode('/', $_SERVER['REQUEST_URI']);
$controller_name = "Main";
$action_name = 'defaultPage';
// получаем контроллер
if (!empty($routes[1])) {
    $controller_name = $routes[1];
}

// получаем действие
if (!empty($routes[2])) {
    $action_name = $routes[2];
}
$filename = APPLICATION_PATH . "controllers/" . strtolower($controller_name) . ".php";
try {
    if (file_exists($filename)) {
        require_once $filename;
    } else {
        throw new Exception("File not found");
    }

    $classname = '\App\\' . ucfirst($controller_name);//

    if (class_exists($classname)) {
        $controller = new $classname();
    } else {
        throw new Exception("File found but class not found");
    }

    if (method_exists($controller, $action_name)) {
        $controller->$action_name();
    } else {
        throw new Exception("Method not found");
    }
} catch (Exception $e) {
    $main->pageNotFound($e);
}


