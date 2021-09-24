<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePaymentFormsTable extends Migration
{
    
    public function up()
    {
        Schema::create('payment__forms', function (Blueprint $table) {
            $table->engine=('InnoDB');
            $table->id();
            $table->string('type',45);
            $table->string('name',45);
            $table->enum('status',[1,2])->default(1);
            $table->string('description');
            $table->timestamps();
        });
    }

  
    public function down()
    {
        Schema::dropIfExists('payment__forms');
    }
}
 