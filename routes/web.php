<?php

use App\Http\Controllers\HomeController;
use App\Http\Controllers\SitemapController;
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

route::get('/', [HomeController::class, 'index'])->name('home');

route::get('contact-us', [HomeController::class, 'contactUs'])->name('contactUs');
route::get('privacy-policy', [HomeController::class, 'privacyPolicy'])->name('privacyPolicy');
route::get('terms', [HomeController::class, 'terms'])->name('terms');
route::post('contact-us-post', [HomeController::class, 'contactUsPost'])->name('contactUsPost');
route::get('products/{slug?}', [HomeController::class, 'products'])->name('products');
route::get('product-details/{slug?}', [HomeController::class, 'productDetails'])->name('productDetails');
Route::get('sitemap.xml',[SitemapController::class, 'index']);