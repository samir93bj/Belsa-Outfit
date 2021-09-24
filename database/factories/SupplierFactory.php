<?php

namespace Database\Factories;

use App\Models\Supplier;
use Illuminate\Database\Eloquent\Factories\Factory;

class SupplierFactory extends Factory
{
    
    protected $model = Supplier::class;

    
    public function definition()
    {
        return [
            'name' => $this->faker->unique()->company,
            'email' => $this->faker->unique()->safeEmail,
            'url' => $this->faker->unique()->url,
            'telephone' => $this->faker->e164PhoneNumber
        ]; 
    }
}
 