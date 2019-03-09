<?php

require __DIR__ . '/../../vendor/autoload.php';
require_once "../Core/bootstrap.php";

use Illuminate\Database\Capsule\Manager as Capsule;
Capsule::schema()->dropIfExists('users');

Capsule::schema()->create('users', function ($table) {
    $table->increments('id');
    $table->string('email')->unique();
    $table->string('name');
    $table->string('password');
    $table->integer('age');
    $table->text('info')->nullable();
    $table->text('photo');
    $table->timestamps();
});