<?php

namespace Database\Seeders;

use App\Models\Payment_Form;
use Illuminate\Database\Seeder;

class PaymentSeeder extends Seeder
{
    
    public function run()
    {
        $type1 = 'Tarjeta de credito';
            $names1 = array('Visa','MasterCard','BBVA','Comafi','Mercado Pago');

        $type2 = 'Tarjeta de debito';
            $names2 = array('Banco Nacion','Banco BBVA','Mercado Pago','Banco HSBC','UALA');

        $type3 = 'Efectivo';
            $names3 = array('1 solo pago','Pago Semanal' , 'Pago Mensual');

        foreach($names1 as $name1){
            $payments = Payment_Form::create([
                    'type' =>  $type1,
                    'name' => $name1,
                    'description' => 'Tarjeta: '.$type1
                ]);}

        foreach($names2 as $name2){
            $payments = Payment_Form::create([
                    'type' =>  $type2,
                    'name' => $name2,
                    'description' => 'Tarjeta: '.$type2
                ]);}

        foreach($names3 as $name3){
            $payments = Payment_Form::create([
                    'type' =>  $type3,
                    'name' => $name3,
                    'description' => 'Tipo: '.$type3
                ]);}

    }
}