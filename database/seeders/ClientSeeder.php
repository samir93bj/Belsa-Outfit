<?php

namespace Database\Seeders;

use App\Models\Address;
use App\Models\Client;
use Illuminate\Database\Seeder;

class ClientSeeder extends Seeder
{
    
    public function run()
    {
        $clients = Client::factory(20)->create();

        foreach($clients as $client){
            Address::factory(1)->create([
                'addressable_id' => $client->id,
                'addressable_type' => Client::class
            ]);
        }
    }
}
