<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Waist extends Model
{
    protected $fillable= [
        'name',
        'description'
     ];
     
    use HasFactory;

    //relacion de uno a muchos 
    public function product_details(){
        return $this->hasMany(Detail_Product::class);
    }
}
  