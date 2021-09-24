<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateWaistsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('waists', function (Blueprint $table) {
            $table->engine=('InnoDB');
            $table->id();
            $table->string('name',45);
            $table->string('slug',45)->nullable();
            $table->enum('status',[1,2])->default(1);
            $table->string('description',45);
            $table->timestamps();
        });
    }
 
    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('waists');
    }
}
