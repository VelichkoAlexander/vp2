<?php
require __DIR__ . '/../../vendor/autoload.php';
require_once "../Core/bootstrap.php";

use Illuminate\Database\Capsule\Manager as Capsule;

Capsule::schema()->dropIfExists('products');

Capsule::schema()->create('products', function ($table) {
    $table->increments('id');
    $table->string('name');
    $table->integer('size');
    $table->string('color');
    $table->float('price');
    $table->integer('quantity');
    $table->integer('category_id');
    $table->timestamps();
});
Capsule::schema()->dropIfExists('categories');
Capsule::schema()->create('categories', function ($table) {
    $table->increments('id');
    $table->text('name');
    $table->timestamps();
});