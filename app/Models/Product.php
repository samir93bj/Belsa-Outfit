<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use HasFactory;

    //relacion de uno a muchos reverso
    public function category(){
        return $this->belongsTo(Category::class);
    }

    //relacion de uno a muchos 
    public function product_details(){
        return $this->hasMany(Detail_Product::class);
    }

    //relacion de muchos a muchos
    public function suppliers(){
        return $this->belongsToMany(Supplier::class);
    }

    //relacion de muchos a muchos
    public function tags(){
        return $this->belongsToMany(Tag::class);
    }
}
  