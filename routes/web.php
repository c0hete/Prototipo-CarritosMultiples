<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProductosController;



Route::get('/', [ProductosController::class, 'index'])->name('index');



// Tus rutas antiguas
Route::view('/pagar', 'pagar')->name('pagar');
Route::view('/checkout', 'checkout')->name('checkout');
Route::view('/carrito', 'carrito')->name('carrito');
Route::view('/catalogo', 'catalogo')->name('catalogo');
Route::view('/revista-medica', 'revista')->name('revista');
Route::view('/contacto', 'contacto')->name('contacto');
Route::view('/detalles', 'detalles')->name('detalles');

Route::get('/productos', [ProductosController::class, 'index'])->name('productos.index');
Route::post('/eliminar-filtros', [ProductosController::class, 'eliminarFiltros'])->name('eliminar-filtros');
Route::get('/detalles', [ProductosController::class, 'detalles'])->name('detalles');

Route::post('add-to-cart/{id}', [CarritoController::class, 'addToCart'])->name('add.to.cart');
Route::get('cart', [CarritoController::class, 'getCart'])->name('get.cart');

//localizacion
Route::get('/getProvincias/{id}', [App\Http\Controllers\LocationController::class, 'getProvincias']);
Route::get('/getComunas/{id}', [App\Http\Controllers\LocationController::class, 'getComunas']);
Route::get('/checkout/regiones', [LocationController::class, 'getRegiones']);


// Rutas para el checkout y la orden de compra
Route::get('/checkout/guest', [CheckoutController::class, 'guest'])->name('checkout.guest');
Route::post('order/store', [App\Http\Controllers\OrderController::class, 'store'])->name('order.store');
Route::get('/pre-checkout', function () {
    return view('pre-checkout');
})->name('pre-checkout');
Route::get('/checkout', 'App\Http\Controllers\LocationController@checkout')->name('checkout');





