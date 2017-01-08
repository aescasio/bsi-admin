<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| This file is where you may define all of the routes that are handled
| by your application. Just tell Laravel the URIs it should respond
| to using a Closure or controller method. Build something great!
|
*/


Route::group( [ 'middleware' => 'web' ] , function () {
    //Auth::routes();

    Route::auth();

    Route::get('/logout', 'Auth\LoginController@logout');

    Route::get('/home', 'HomeController@index');

    Route::get('/', function () {
        return view('welcome');
    });

    

    /*
        Route::group(['middleware'=>['role:admin|permission:global-permission']], function() {
            Route::resource('departments', 'DepartmentController');
        });
    */
});


Route::resource('profiles', 'ProfileController');