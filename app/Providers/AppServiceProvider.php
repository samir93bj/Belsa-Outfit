<?php

namespace App\Providers;

use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Schema;

use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        Schema::defaultStringLength(191); //=> Seteamos la longitud de los caracteres por defectos

        Route::resourceVerbs([ //=> Editamos el nombre de las rutas 
            'create' => 'crear',
            'edit' => 'editar',
            'index' => 'inicio'
        ]);
        
    }
}
