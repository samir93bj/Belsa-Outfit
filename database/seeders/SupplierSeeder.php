<?php

namespace Database\Seeders;

use App\Models\Address;
use App\Models\Supplier;
use Illuminate\Database\Seeder;

class SupplierSeeder extends Seeder
{
    
    public function run()
    {
        $suppliers = Supplier::factory(10)->create();

        foreach($suppliers as $supplier){
            Address::factory(1)->create([
                'addressable_id' => $supplier->id,
                'addressable_type' => Supplier::class
            ]);
        }
    }
}
