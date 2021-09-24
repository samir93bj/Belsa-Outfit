<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    use HasFactory;

    protected $fillable= [
        'name',
        'slug',
        'status',
        'description'
     ];
     
    public function getRouteKeyName(){
        return "slug";
    }

   //relacion de uno a muchos
    public function products(){
        return $this->hasMany(Product::class);
    }

    //relacion de uno a uno polimorfica
    public function image(){
        return $this->morphOne(Image::class, 'imageable');
    }
}
