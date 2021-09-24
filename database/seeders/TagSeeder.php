<?php

namespace Database\Seeders;

use App\Models\Tag;
use Illuminate\Database\Seeder;

class TagSeeder extends Seeder
{
    
    public function run()
    {
       $tags = array ('Verano', 'Ofertas', 'Invierno', 'Otoño', 'Primavera');

       foreach($tags as $tag){
            Tag::create([
                'name' => $tag,
                'slug' => $tag,
                'description' => 'Tag: '.$tag
            ]);
       }
    }
}
