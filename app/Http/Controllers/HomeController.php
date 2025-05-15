<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product;
use App\Models\ProductCategory;

class HomeController extends Controller
{
    public function index()
    {

        $productCat = Product::all();
        return view('home',compact('productCat'));
    }
  
    public function contactUs()
    {
        return view('contact_us');
    }

    public function products($slug = null)
    {

        $productCat = ProductCategory::all();
 
  
      if($slug!=null){
            $productCategory = ProductCategory::where('slug',$slug)->first();
            $productList = Product::latest()->with('productCategory')->where('product_id',$productCategory->id)->paginate(8);
        

         

        }else{
            $productList = Product::latest()->with('productCategory')->paginate(8);
          
         
         }
        
        return view('product',compact('productList','productCat'));
    }

    public function productDetails($slug = null) 
    {
        $product = Product::latest()->limit(10)->get();
        $productData = Product::with('productCategory')->where('slug',$slug)->first();
        return view('product_details',compact('productData','product'));
    }
}
