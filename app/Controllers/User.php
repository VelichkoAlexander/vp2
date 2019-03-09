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
        $this->view->twigRender('users', ['users' => $usersData, 'sort' => $this->sort]);
    }

    public function show()
    {
        $id = $_GET['id'];

        if (!empty($id)) {
            $userData = $this->user->getById($id);
            $this->view->twigRender('user', ['user' => $userData[0]]);
            return;
        }

        echo 'No user with this id!';
    }

    public function login()
    {
        $login = $_POST['login'];
        $user = $this->user->getUserByLogin($login);
        if (!$user) {
            $this->view->twigRender('login', ['info' => 'No user with this login and password 123']);
            die;
        }
        $gotPassword = $_POST['password'];
        if ($gotPassword !== $user['password']) {
            $this->view->twigRender('login', ['info' => 'No user with this login and password 123']);
            die;
        }
        $_SESSION['user_id'] = $user['id'];
        header('Location: /user/showlist');

    }

    public function registration()
    {
        $this->view->twigRender('login', []);
    }

    public function logOut()
    {
        unset($_SESSION['user_id']);
        header('Location: /');
    }


}