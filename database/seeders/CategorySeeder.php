<?php
 
namespace Database\Seeders;

use App\Models\Category;
use App\Models\Image;
use Illuminate\Database\Seeder;

class CategorySeeder extends Seeder
{
  
    public function run()
    {
        $categories = array(
            'Sweater','Camisas','Vestidos ','Pantalones','Shorts',
            'Remeras','Camperas','Bufandas','Gorros','Cintos','Anteojos');

        foreach($categories as $category){

        $categorias = Category::create([
                'name' => $category,
                'slug' => 'Categoria: '.$category,
            ]);
        
        Image::factory(1)->create([
            'imageable_id' => $categorias->id,
            'imageable_type' => Category::class
        ]);
        
    }
}
}
