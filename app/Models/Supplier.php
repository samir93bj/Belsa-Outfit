<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Supplier extends Model
{
    use HasFactory;

    protected $fillable= [
        'name',
        'email',
        'url',
        'telephone' 
     ];

    //relacion uno a uno polimorfica
    public function address(){
        return $this->morphOne(Address::class,'addressable');
    }

    //Relacion de muchos a muchos
    public function products(){
        return $this->belongsToMany(Product::class);
    }
}
  