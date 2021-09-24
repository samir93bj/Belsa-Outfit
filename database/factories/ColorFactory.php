<?php

namespace Database\Factories;

use App\Models\Color;
use Illuminate\Database\Eloquent\Factories\Factory;

class ColorFactory extends Factory
{
    
    protected $model = Color::class;

    
    public function definition()
    {
        return [
            'name' => $this->faker->unique()->colorName,
            'description' => "El codigo del color es: ".$this->faker->hexcolor
        ];
    }
}
