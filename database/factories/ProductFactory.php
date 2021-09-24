<?php

namespace Database\Factories;

use App\Models\Category;
use App\Models\Product;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;

class ProductFactory extends Factory
{
    
    protected $model = Product::class;

   
    public function definition()
    {
        $name = $this->faker->unique()->sentence(1);

        return [
            'name' => $name,
            'status' => $this->faker->randomElement([1,2]),
            'category_id' => Category::all()->random()->id,
            'slug' => Str::slug($name) 
        ];
    }
}
