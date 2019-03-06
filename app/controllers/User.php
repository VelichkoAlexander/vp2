<?php

namespace App;

use \App\Models\User as UserModel;

class User extends MainController
{

    public function index()
    {
        echo "users index";
    }

    public function create()
    {
        echo "User create interface";
    }

    public function showUserList()
    {
        $user = new UserModel();
        echo $user->allUsers();

    }

    public function showFirstUser()
    {

        $users_model = new UserModel();
        $user = $users_model->first();

        $data['user'] = $user;

        $this->view->render('users/userfirst', $data);
    }
}