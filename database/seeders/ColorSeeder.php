<?php

namespace Database\Seeders;

use App\Models\Color;
use Illuminate\Database\Seeder;

class ColorSeeder extends Seeder
{
    
    public function run()
    {
        $colors = array(
            'Azul','Verder','Rojo ','Blanco','Negro',
            'Morado','Gris','Amarillo','Celeste','Rosa','Crema');

        foreach($colors as $color){

        $colors = Color::create([
                'name' => $color,
                'slug' => $color,
                'description' => 'Color: '.$color
            ]);
        
    }
    }
}
 