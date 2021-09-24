<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateAddressesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('addresses', function (Blueprint $table) {
            $table->engine=('InnoDB');
            $table->string('country');
            $table->string('state',45);
            $table->string('city');
            $table->string('direction');
            $table->string('floor')->nullable();
            $table->string('departament')->nullable();
            $table->text('description')->nullable();
            $table->unsignedBigInteger('addressable_id');
            $table->string('addressable_type');
            $table->timestamps();

            $table->primary(['addressable_id','addressable_type']);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('addresses');
    }
}
