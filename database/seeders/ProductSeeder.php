<?php

namespace Database\Seeders;

use App\Models\Image;
use App\Models\Product;
use Illuminate\Database\Seeder;

class ProductSeeder extends Seeder
{
    
    public function run()
    {
        $products = Product::factory(50)->create();

        foreach($products as $product){
            Image::factory(1)->create([
                'imageable_id' => $product->id,
                'imageable_type' => Product::class
            ]);

            $product->tags()->attach([
                rand(1,3),
                rand(5,2)
            ]);

            $product->suppliers()->attach([
                rand(1,5),
                rand(5,10)
            ]);
        } 
    }
}
   