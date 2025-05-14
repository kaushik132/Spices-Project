<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ProductCategory extends Model
{
     protected $primaryKey = 'id';
    protected $table = 'product_category';
     public function products(){

        return $this->hasMany(Product::class,'product_id');
    }
}
