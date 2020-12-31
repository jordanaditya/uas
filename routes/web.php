<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('/homes', 'HomesController@Homes');
Route::get('/homes/cari', 'HomesController@Cari');
Route::get('/article/{id}', 'ArticleController@Article');
Route::get('/about', 'AboutController@About');

Auth::routes();
Route::get('/home', 'HomeController@index')->name('home');

Route::get('/manage', 'ManageController@index')->name('manage');
Route::get('/adminmanage', 'ManageController@admin');
Route::get('/articledeleteadmin/{id}', 'ManageController@articledeleteadmin');
Route::get('/articleadd', 'ManageController@add');
Route::post('/articlecreate', 'ManageController@create');
Route::get('/articleedit/{id}','ManageController@edit');
Route::post('/articleupdate/{id}','ManageController@update');
Route::get('/articledelete/{id}', 'ManageController@delete');

Route::get('/usermanage', 'UserController@index')->name('usermanage');
Route::get('/useredit/{id}', 'UserController@edit');
Route::post('/userupdate/{id}', 'UserController@update');

Route::get('/useradminmanage', 'UserController@adminindex');
Route::get('/adminuseredit/{id}', 'UserController@adminedit');
Route::post('/adminuserupdate/{id}', 'UserController@adminupdate');
Route::get('/adminuserdelete/{id}', 'UserController@admindelete');

Route::get('/articlecetak_pdf', 'ArticleController@cetak_pdf');

Route::get('/Technology', 'ArticleController@Technology');
Route::get('/Culture', 'ArticleController@Culture');
Route::get('/Health', 'ArticleController@Health');
Route::get('/Industry', 'ArticleController@Industry');
Route::get('/Programming', 'ArticleController@Programming');
Route::get('/Gaming', 'ArticleController@Gaming');