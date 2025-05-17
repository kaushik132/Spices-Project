<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTitleTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('title', function (Blueprint $table) {
            $table->increments('id');
            $table->string('seo_title_home')->nullable();
            $table->text('seo_des_home')->nullable();
            $table->text('seo_key_home')->nullable();
            $table->string('seo_title_product')->nullable();
            $table->text('seo_des_product')->nullable();
            $table->text('seo_key_product')->nullable();
            $table->string('seo_title_contact')->nullable();
            $table->text('seo_des_contact')->nullable();
            $table->text('seo_key_contact')->nullable();
            $table->string('seo_title_terms')->nullable();
            $table->text('seo_des_terms')->nullable();
            $table->text('seo_key_terms')->nullable();
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
        Schema::dropIfExists('title');
    }
}
