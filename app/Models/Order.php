<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    use HasFactory;

    //relacion de uno a mucho reverso
    public function client(){
        return $this->belongsTo(Client::class);
    }

    //relacion de uno a muchos reverso
    public function state_order(){
        return $this->belongsTo(State_Order::class);
    }

    //Relacion de uno a uno
    public function sale(){
        return $this->belongsTo(Sale::class);
    }

}
