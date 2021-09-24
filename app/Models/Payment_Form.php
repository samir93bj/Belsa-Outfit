<?php

namespace App\Models;

use Database\Factories\PaymentFormFactory;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Payment_Form extends Model
{
    protected $fillable= [
        'type', 
        'name',
        'status',
        'description'
     ];

    use HasFactory;

     /** @return PaymentFormFactory */
     protected static function newFactory()
     {
         return PaymentFormFactory::new();
     }

      //Relacion de uno a muchos
    public function sales(){
        return $this->hasMany(Sale::class);
    }
}
 