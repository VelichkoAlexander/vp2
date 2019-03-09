<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model as Eloquent;

class User extends Eloquent
{
    static function allUsers($desc)
    {
        if (isset($desc) && $desc === true) {
            return self::all()->sortByDesc('age');
        }
        return self::all()->sortBy('age');
    }

    public function getById($id)
    {
        return $this->where('id', $id)->get();
    }

    public function getUserByLogin($login)
    {
        return $this->where('email', $login)->first()->toArray();
    }


    public function store($name, $user_id, $info)
    {
        //
    }


}
