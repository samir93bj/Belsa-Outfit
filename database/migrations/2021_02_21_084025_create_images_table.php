<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateImagesTable extends Migration
{
    
    public function up()
    {
        Schema::create('images', function (Blueprint $table) {
            $table->engine=('InnoDB');
            $table->id();
            $table->text('url');
            $table->unsignedBigInteger('imageable_id');
            $table->string('imageable_type',45);
            $table->timestamps();
        });
    }

   
    public function down()
    {
        Schema::dropIfExists('images');
    }
}   