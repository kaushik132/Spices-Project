<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
      protected $primaryKey = 'id';
    protected $table = 'product';
        public function productCategory(){

        return $this->belongsTo(ProductCategory::class,'product_id');
    }

}
