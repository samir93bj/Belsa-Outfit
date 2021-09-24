<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateDetailProductsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('detail__products', function (Blueprint $table) {
            $table->engine=('InnoDB');
            $table->id();
            $table->unsignedBigInteger('product_id');
            $table->integer('quantity');
            $table->float('unit_price');
            $table->string('description',45);
            $table->boolean('status');
            $table->unsignedBigInteger('waist_id');
            $table->unsignedBigInteger('color_id');
            $table->timestamps();

            $table->foreign('product_id')->references('id')->on('products')->onDelete('cascade');
            $table->foreign('waist_id')->references('id')->on('waists');
            $table->foreign('color_id')->references('id')->on('colors');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('detail__products');
    }
}
