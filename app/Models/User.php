<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model as Eloquent;

class User extends Eloquent
{
    static function allUsers($desc)
    {
        if (isset($desc) && $desc === true) {
            return User::all()->sortByDesc('age');
        }
        return User::all()->sortBy('age');
    }

    public function get($id)
    {
        return User::where('id', $id)->get();
    }


    public function store($name, $user_id, $info)
    {
        //
    }


}
