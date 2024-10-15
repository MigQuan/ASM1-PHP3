<?php

use App\Http\Controllers\Admin\AdminController;
use App\Http\Controllers\Admin\BookController;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\BooksController;
use App\Http\Middleware\Authenticate;
use App\Http\Middleware\CheckAuth;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});
Route::get('/',[BooksController::class,'index'])->name('page.home');
Route::get('/category/{id}',[BooksController::class,'list'])->name('page.list');
Route::get('/detail/{id}',[BooksController::class,'detail'])->name('page.detail');
// Login
//Login, register, logout

Route::get('/login', [AuthController::class,'getLogin'])->name('login');
Route::post('/login', [AuthController::class,'postLogin'])->name('postLogin');

Route::get('/register', [AuthController::class,'getRegister'])->name('register');
Route::post('/register', [AuthController::class,'postRegister'])->name('postRegister');

Route::get('/logout', [AuthController::class,'logout'])->name('logout');
// Admin
//Admin


Route::middleware([Authenticate::class,CheckAuth::class])->group(function(){
    Route::prefix('admin')->group(function(){
    //Trang chủ ADMIN
        Route::get('/',[AdminController::class,'index'])->name('admin.index');

    //CRUD POST
        Route::get('/product',[BookController::class,'List'])->name('admin.product.index');

    //     Route::get('/product/show/{post}',[AdminPostController::class,'showPost'])->name('admin.product.show');

    //     Route::post('/product/toggle-status/{post}', [AdminPostController::class, 'toggleStatus'])->name('admin.toggleStatus');

        Route::get('/product/create',[BookController::class,'createPost'])->name('admin.product.create');
        Route::post('/product/create',[BookController::class,'storePost'])->name('admin.product.store');

        Route::get('/product/edit/{book}',[BookController::class,'editPost'])->name('admin.product.edit');
        Route::put('/product/edit/{book}',[BookController::class,'updatePost'])->name('admin.product.update');

        Route::delete('/product/delete/{book}',[BookController::class,'destroyPost'])->name('admin.product.destroy');

    // //CRUD CATEGORY
    //     Route::get('/categories',[CategoryController::class,'indexCategory'])->name('admin.categories.index');

    //     Route::get('/categories/show/{category}',[CategoryController::class,'showCategory'])->name('admin.categories.show');

    //     Route::get('/categories/create',[CategoryController::class,'createCategory'])->name('admin.categories.create');
    //     Route::post('/categories/create',[CategoryController::class,'storeCategory'])->name('admin.categories.store');

    //     Route::get('/categories/edit/{category}',[CategoryController::class,'editCategory'])->name('admin.categories.edit');
    //     Route::put('/categories/edit/{category}',[CategoryController::class,'updateCategory'])->name('admin.categories.update');

    //     Route::delete('/categories/delete/{category}',[CategoryController::class,'destroyCategory'])->name('admin.categories.destroy');

    // //CRUD USER
    //     Route::get('/users',[UserController::class,'indexUser'])->name('admin.users.index');

    //     Route::get('/users/show/{user}',[UserController::class,'showUser'])->name('admin.users.show');

    //     Route::post('/admin/toggle-statusUser/{user}', [UserController::class, 'toggleStatusUser'])->name('admin.toggleStatusUser');

    //     Route::get('/users/create',[UserController::class,'createUser'])->name('admin.users.create');
    //     Route::post('/users/create',[UserController::class,'storeUser'])->name('admin.users.store');

    //     Route::get('/users/edit/{user}',[UserController::class,'editUser'])->name('admin.users.edit');
    //     Route::put('/users/edit/{user}',[UserController::class,'updateUser'])->name('admin.users.update');

    //     Route::delete('/users/delete/{user}',[UserController::class,'destroyUser'])->name('admin.users.destroy');

    });
});