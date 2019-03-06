<?php
namespace App;

use App\Core\View;
use \App\Models\User as UserModel;

class MainController
{
    protected $view;
    protected $user;

    public function __construct()
    {
        $this->view = new View();
        $this->user = new UserModel();
    }

    public function defaultPage()
    {
        echo "Default";
    }
}