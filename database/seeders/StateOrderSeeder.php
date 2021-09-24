<?php

namespace Database\Seeders;

use App\Models\State_Order;
use Illuminate\Database\Seeder;

class StateOrderSeeder extends Seeder
{
    public function run()
    {
        $states = array('Pendiete','Completado','Preparandose','Enviado','Entregado');
        
            foreach($states as $state){
                State_Order::create([
                    'name' => $state,
                    'description' => 'El pedido se encuentra: '.$state,
                    'status' => '1'
                ]);
            }
    }
}
