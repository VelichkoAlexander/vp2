<?php
require_once "../Core/bootstrap.php";

use Illuminate\Database\Capsule\Manager as Capsule;

Capsule::schema()->dropIfExists('users');

Capsule::schema()->create('users', function ($table) {
    $table->increments('id');
    $table->string('name');
    $table->string('password');
    $table->integer('age')->default(18);
    $table->text('info')->nullable();
    $table->text('photo');
    $table->timestamps();
});