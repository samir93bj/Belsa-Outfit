<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Sale extends Model
{
    use HasFactory;

    //relacion de uno a muchos reverso 
    public function client(){
       return $this->belongsTo(Client::class);
    }

    //relacion de uno a muchos
    public function sale_details(){
        return $this->hasMany(Sale_Detail::class);
    }

    //relacion de uno a uno 
    public function order(){
        return $this->hasOne(Order::class);
    }

    //Relacion de uno a muchos reverso
    public function payment_form(){
        return $this->belongsTo(Payment_Form::class);
    }
}
