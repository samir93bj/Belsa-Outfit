<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTagsTable extends Migration
{
   
    public function up()
    {
        Schema::create('tags', function (Blueprint $table) {
            $table->engine=('InnoDB');
            $table->id();
            $table->string('name',45);
            $table->string('slug',45);
            $table->enum('status',[1,2])->default(1);
            $table->text('description')->nullable();
            $table->timestamps();
        });
    }

    
    public function down()
    {
        Schema::dropIfExists('tags');
    }
}
 