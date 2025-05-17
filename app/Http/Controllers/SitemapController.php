<?php

namespace App\Http\Controllers;

use App\Models\Product;
use App\Models\ProductCategory;
use Illuminate\Http\Request;

class SitemapController extends Controller
{
    public function index(){
$products = Product::all();
$productCats = ProductCategory::all();

        return response()->view('sitemap',['products'=> $products,'productCats'=>$productCats ])->header('Content-Type','text/xml');
    }
}
