<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateOrdersTable extends Migration
{
    public function up()
    {
        Schema::create('orders', function (Blueprint $table) {
            $table->engine=('InnoDB');
            $table->id();
            $table->unsignedBigInteger('state_order_id');
            $table->unsignedBigInteger('sale_id');
            $table->unsignedBigInteger('client_id');
            $table->timestamps();

            $table->foreign('state_order_id')->references('id')->on('state__orders');
            $table->foreign('sale_id')->references('id')->on('sales');
            $table->foreign('client_id')->references('id')->on('clients');
        });
    }

    
    public function down()
    {
        Schema::dropIfExists('orders');
    }
}
