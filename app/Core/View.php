<?php

namespace App\Core;

use Twig_Environment;

class View
{
    protected $loader;
    protected $twig;

    public function render($filename, array $data)
    {
        extract($data);
        require_once APPLICATION_PATH . "/Views/" . $filename . ".php";
    }

    public function __construct($data = [])
    {
        $this->loader = new \Twig_Loader_Filesystem(APPLICATION_PATH . 'Views');
        $this->twig = new Twig_Environment($this->loader);
    }

    public function twigRender($filename, array $data)
    {


        echo $this->twig->render($filename . ".twig", $data);
    }
}

