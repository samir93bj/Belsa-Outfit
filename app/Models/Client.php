<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Client extends Model
{
    use HasFactory;

    protected $fillable= [
        'name',
        'email',
        'telephone' 
     ];

        //Relacion de uno a muchos
    public function sales(){
        return $this->hasMany(Sale::class);
    }
    
        //relacion de uno a muchos
    public function orders(){
        return $this->hasMany(Order::class);
    }

       //relacion uno a uno polimorfica
    public function address(){
        return $this->morphOne(Address::class,'addressable');
    }

} 
  