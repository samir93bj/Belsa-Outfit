<?php

namespace Database\Seeders;

use App\Models\Waist;
use Illuminate\Database\Seeder;

class WaistSeeder extends Seeder
{
    
    public function run()
    {
        $names = array('S','M','L','XL','XXL','1','2','3','4');

        foreach($names as $name){
            Waist::create([
                'name' => $name,
                'description' => 'Talle: '.$name
            ]);
        }
    }
}
