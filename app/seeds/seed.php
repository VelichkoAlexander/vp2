<?php

namespace App\Models;
require_once "../Core/bootstrap.php";

use Faker;

$faker = Faker\Factory::create();

for ($i = 0; $i < 20; $i++) {

    $user = new User();
    $user->name = $faker->firstName . ' ' . $faker->lastName;
    $user->password = $faker->password;
    $user->info = $faker->text;
    $user->photo = $faker->imageUrl(200, 200, 'cats');
    $user->age = $faker->biasedNumberBetween($min = 10, $max = 63);
    $user->created_at = $faker->dateTime;
    $user->save();


}