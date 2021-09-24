<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class State_Order extends Model
{
    use HasFactory;

    //relacion de uno a muchos
    public function orders(){
        return $this->hasMany(Order::class);
    }
}
 