<?php

use Illuminate\Routing\Router;

Admin::routes();

Route::group([
    'prefix'        => config('admin.route.prefix'),
    'namespace'     => config('admin.route.namespace'),
    'middleware'    => config('admin.route.middleware'),
    'as'            => config('admin.route.prefix') . '.',
], function (Router $router) {

    $router->get('/', 'HomeController@index')->name('home');
    $router->resource('product-categories', ProductCategoryController::class);
    $router->resource('products', ProductController::class);
    $router->resource('titles', TitleController::class);
    $router->resource('contacts', ContactController::class);
    $router->resource('testimonials', TestimonialController::class);
    $router->resource('homebanners', HomeBannerController::class);
    $router->resource('privacies', PrivacyController::class);
    $router->resource('terms', TermsController::class);
    $router->resource('refunds', RefundController::class);
    $router->resource('abouts', AboutController::class);
    $router->resource('posters', PosterController::class);
    $router->resource('company-infos', CompanyInfoController::class);

});
