<?php

/** @var \Laravel\Lumen\Routing\Router $router */

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It is a breeze. Simply tell Lumen the URIs it should respond to
| and give it the Closure to call when that URI is requested.
|
*/


//matches localhost:8888/lumen/public/
$router->get('/', function () use ($router) {
    return $router->app->version();
});

$router->get('/artworks', 'ArtworkController@getAll');
$router->get('/artworks/{id}', 'ArtworkController@getOne');
$router->post('/artworks/add', 'ArtworkController@save');
$router->post('/artworks/edit/{id}', 'ArtworkController@update');
$router->delete('/artworks/delete/{id}', 'ArtworkController@delete');













