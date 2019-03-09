<?php

namespace App\Core;

//use App\Core\View;

class Config
{

    protected $view;

    public function __construct()
    {
        $this->view = new View();
        require "bootstrap.php";


    }

    public function pageNotFound($error = 'Something wrong')
    {
        $this->view->twigRender('/layout/404', ['error' => $error]);
    }

}
