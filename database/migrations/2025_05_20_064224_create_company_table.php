<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCompanyTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('company', function (Blueprint $table) {
            $table->increments('id');
            $table->text('address')->nullable();
            $table->string('phone_number')->nullable();
            $table->string('email')->nullable();
            $table->string('facbook_link')->nullable();
            $table->string('whatsapp_link')->nullable();
            $table->string('instagram_link')->nullable();
            $table->string('youtube_link')->nullable();
            $table->string('map_link')->nullable();
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
        Schema::dropIfExists('company');
    }
}
