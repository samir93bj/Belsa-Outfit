<?php

namespace App\Models;

use Database\Factories\DetailProductFactory;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Detail_Product extends Model
{
    use HasFactory;

      /** @return DetailProductFactory */ 
      protected static function newFactory()
      {
          return DetailProductFactory::new();
      } 

      //relacion de uno a mucho reverso 
      public function product(){
          return $this->belongsTo(Product::class);
      }

      //Relacion de uno a muchos reverso
    public function color(){
        return $this->belongsTo(Color::class);
    }

    //Relacion de uno a muchos reverso
    public function waist(){
        return $this->belongsTo(Waist::class);
    } 
}
 