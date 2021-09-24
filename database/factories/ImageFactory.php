<?php

namespace Database\Factories;

use App\Models\Image;
use Illuminate\Database\Eloquent\Factories\Factory;

class ImageFactory extends Factory
{
    
    protected $model = Image::class;

   
    public function definition()
    {
        return [
            'url' => 'products/' . $this->faker->image('public/storage/products',640,480,null,false)
        ];
    }
}
  