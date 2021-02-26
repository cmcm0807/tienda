<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProductosController;
use App\Http\Controllers\CarritoController;
use App\Http\Controllers\AdminController;
use App\Models\producto;

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
    $productos = producto::paginate();
    return view('Productos.productos', compact('productos'));
});


Route::get('productos', ProductosController::class)->name('productos');

Route::get('caritto', CarritoController::class)->name('carrito');

Route::get('admin', [AdminController::class, 'index'])->name('admin.index');

Route::post('admin', [AdminController::class, 'store'])->name('admin.store');

Route::get('admin/edit', [AdminController::class, 'edit'])->name('admin.edit');

Route::get('admin/create', [AdminController::class, 'edit'])->name('admin.create');

Route::put('admin/update', [AdminController::class, 'update'])->name('admin.update');

