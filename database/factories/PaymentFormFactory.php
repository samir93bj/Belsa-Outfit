<?php

namespace Database\Factories;

use App\Models\Payment_Form;
use Illuminate\Database\Eloquent\Factories\Factory;

class PaymentFormFactory extends Factory
{
    
    protected $model = Payment_Form::class;

    public function definition()
    {
       //$description = json_encode($this->faker->creditCardDetails);
       $name = $this->faker->unique()->creditCardType;

       return [
           'name'=> $name,
           'description' => 'Tarjeta: '.$name
       ];
    }
}
