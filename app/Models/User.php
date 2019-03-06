<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model as Eloquent;

class User extends Eloquent
{
    static function allUsers()
    {
        return User::all();
    }

    public function first()
    {
        return $this->users[0];
    }

    public function get($id)
    {
        return $this->users[$id];
    }


    public function store($name, $user_id, $info)
    {
        //
    }


}
