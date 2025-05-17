<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Title;
use App\Models\Contact;
use App\Models\Product;
use App\Models\ProductCategory;

class HomeController extends Controller
{
    public function index()
    {
  $homepage = Title::first();
        $seo_data['seo_title'] = $homepage->seo_title_home;
        $seo_data['seo_description'] = $homepage->seo_des_home;
        $seo_data['keywords'] = $homepage->seo_key_home;
        $canocial ='https://shyamafoods.com/';
        $productCat = Product::all();
        return view('home',compact('productCat','seo_data','canocial'));
    }
   
  
    public function contactUs()
    {
        $homepage = Title::first();
        $seo_data['seo_title'] = $homepage->seo_title_contact;
        $seo_data['seo_description'] = $homepage->seo_des_contact;;
        $seo_data['keywords'] = $homepage->seo_key_contact;
        $canocial ='https://shyamafoods.com/contact-us';
        return view('contact_us',compact('seo_data','canocial'));
    }

     public function contactUsPost(Request $request)    
    {
        $this->validate(request(), [
            'name' => "required",
            'email' => "required",
            'number' => "required",
            'company' => "required",
            'address'  => "required",
            'postal_address'  => "required",
            'city' => "required",
            'country' => "required",
            'message' => "required",
         
          ], [], 
        [
          'name' => 'Full Name',
          'email' => 'Email',
          'number' => 'Number',
          'company' => 'Company',
          'address'  => "Address",
          'postal_address'  => "Postal Address",
            'city' => "City",
            'country' => "Country",
            'message' => "Message",
          
         
        ]);

        
$contact_obj = new Contact;
$contact_obj->name = $request->name;
$contact_obj->email = $request->email;
$contact_obj->number = $request->number;
$contact_obj->company = $request->company;
$contact_obj->address = $request->address;
$contact_obj->postal_address = $request->postal_address;
$contact_obj->city = $request->city;
$contact_obj->country = $request->country;
$contact_obj->message = $request->message;
$contact_obj->save();
 
  return back()->with('message', 'Form Submitted Successfully!');
    }

    public function products($slug = null)
    {

        $productCat = ProductCategory::all();
 
   $homepage = Title::select('seo_title_product','seo_des_product','seo_key_product')->first();
      if($slug!=null){
            $productCategory = ProductCategory::where('slug',$slug)->first();
            $productList = Product::latest()->with('productCategory')->where('product_id',$productCategory->id)->paginate(8);
             $seo_data['seo_title'] =$productCategory->seo_title;
            $seo_data['seo_description'] =$productCategory->seo_des;
           $seo_data['keywords'] =$productCategory->seo_key;
           $canocial ='https://shyamafoods.com/products/'.$slug;
        

         

        }else{
            $productList = Product::latest()->with('productCategory')->paginate(8);
            $seo_data['seo_title'] =$homepage->seo_title_product;
            $seo_data['seo_description'] =$homepage->seo_des_product;
            $seo_data['keywords'] =$homepage->seo_key_product;
            $canocial ='https://shyamafoods.com/products';
          
         
         }
        
        return view('product',compact('productList','productCat','seo_data','canocial'));
    }

 public function productDetails($slug = null) 
{
    
    $product = Product::latest()->limit(10)->get();
    $productData = Product::with('productCategory')->where('slug', $slug)->first();

    // Get quantity-wise descriptions (assume stored as JSON in DB)
    $productDescriptions = json_decode($productData->descriptions_by_quantity ?? '{}', true);
    $seo_data['seo_title'] =$productData->seo_title;
        $seo_data['seo_description'] =$productData->seo_des;
       $seo_data['keywords'] =$productData->seo_key;
       $canocial ='https://shyamafoods.com/product-details/'.$slug;

    return view('product_details', compact('productData', 'product', 'productDescriptions', 'seo_data','canocial'));
}

}
