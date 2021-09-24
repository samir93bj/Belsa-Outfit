<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Color extends Model
{
    use HasFactory;

    protected $fillable= [
        'name',
        'code',
        'slug',
        'status',
        'description'
     ];

    //realacion de uno a muchos
    public function product_details(){
        return $this->hasMany(Detail_Product::class);
    }
}
  