<?php

namespace Database\Factories;

use App\Models\Address;
use Illuminate\Database\Eloquent\Factories\Factory;

class AddressFactory extends Factory
{
   
    protected $model = Address::class;

  
    public function definition()
    {
        return [
            'country'=> $this->faker->country,
            'state'=> $this->faker->state,
            'city'=> $this->faker->city,
            'direction' => $this->faker->streetAddress,
            'floor' => '',
            'departament' => ''
        ];
    }
}
