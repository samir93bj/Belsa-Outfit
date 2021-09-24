<?php

use App\Http\Controllers\Admin\CategoryController;
use App\Http\Controllers\Admin\ClientController;
use App\Http\Controllers\Admin\ColorController;
use App\Http\Controllers\Admin\HomeController;
use App\Http\Controllers\Admin\PaymentFormsController;
use App\Http\Controllers\Admin\ProductController;
use App\Http\Controllers\Admin\RoleController;
use App\Http\Controllers\Admin\SupplierController;
use App\Http\Controllers\Admin\TagController;
use App\Http\Controllers\Admin\UserController;
use App\Http\Controllers\Admin\WaistController;
use Illuminate\Support\Facades\Route;

Route::get('', [HomeController::class,'index'])->name('admin.home');

//RUTAS PARA ADMINISTRADORES
Route::resource('users', UserController::class)->names('admin.users'); 

Route::resource('roles', RoleController::class)->names('admin.roles');

//RUTAS PARA CATEGORIAS
Route::resource('categories', CategoryController::class)->names('admin.categories');

Route::resource('tags', TagController::class)->names('admin.tags');

//RUTAS PARA PRODUCTOS Y DETALLES
Route::resource('products', ProductController::class)->names('admin.products'); 

Route::resource('waists', WaistController::class)->names('admin.waists');  

Route::resource('colors', ColorController::class)->names('admin.colors'); 

//RUTAS PARA CLIENTES Y PROVEEDORES
Route::resource('suppliers', SupplierController::class)->names('admin.suppliers');   

Route::resource('clients', ClientController::class)->names('admin.clients');

//RUTAS PARA FORMAS DE PAGO
Route::resource('payments', PaymentFormsController::class)->names('admin.payments');