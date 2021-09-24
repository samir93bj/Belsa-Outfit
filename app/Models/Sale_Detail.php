<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Sale_Detail extends Model
{
    use HasFactory;

       //Relacion de uno a muchos reversa
       public function sale(){
        return $this->belongsTo(Sale::class);
    }

        //relacion de uno a muchos reverso
        public function porduct(){
            return $this->belongsTo(Product::class);
        }
}
  