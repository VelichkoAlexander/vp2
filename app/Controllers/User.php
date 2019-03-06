<?php

namespace App;


class User extends MainController
{

     private $sort = false;


    public function index()
    {
        echo "users index";
    }

    public function create()
    {
        echo "User create interface";
    }

    public function showList()
    {

        if (isset($_GET['sort']) && $_GET['sort'] === 'desc') {
            $this->sort = true;
        }
        $usersData = $this->user->allUsers($this->sort);
        $this->view->twigRender('users', ['users' => $usersData, 'sort'=> $this->sort]);
    }

    public function show()
    {
        $id = $_GET['id'];

        if (!empty($id)) {
            $userData = $this->user->get($id);
            $this->view->twigRender('user', ['user' => $userData[0]]);
            return;
        }

        echo 'No user with this id!';
    }


}