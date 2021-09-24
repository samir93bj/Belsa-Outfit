<?php

namespace Database\Seeders;

use App\Models\Address;
use App\Models\Client;
use App\Models\Color;
use App\Models\Payment_Form;
use App\Models\State_Order;
use App\Models\Supplier;
use App\Models\Waist;
use Database\Factories\PaymentFormFactory;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Storage;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        //Borramos la carpeta products
        Storage::deleteDirectory('products');
        //Creamos nuevamente la carpeta products
        Storage::makeDirectory('products');

        //CREACION DE ROLES
        $this->call(RoleSeeder::class);

        // \App\Models\User::factory(10)->create();
        $this->call(UserSeeder::class);

        //COLOR 
        //Color::factory(10)->create();
        $this->call(ColorSeeder::class);

        //TALLE
        $this->call(WaistSeeder::class);

        //CATEGORIA
        $this->call(CategorySeeder::class);

        //TAG
        $this->call(TagSeeder::class);

        //CREAR PROVEEDORES
        //Supplier::factory(5)->create();
        $this->call(SupplierSeeder::class);

        //CREAR PRODUCTOS
        $this->call(ProductSeeder::class);

        //CREAR CLIENTES
        //Client::factory(50)->create();
        $this->call(ClientSeeder::class);

        //CREAR FORMAS DE PAGOS
        //Payment_Form::factory(5)->create();
        $this->call(PaymentSeeder::class);

        //CREAR STADOS DE ORDENES
        $this->call(StateOrderSeeder::class);

    }
}
