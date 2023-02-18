<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateEtudiantsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('etudiants', function (Blueprint $table) {
            $table->id();
            $table->string("nom", 100);
            $table->string("adresse", 200);
            $table->string("phone", 100);
            $table->string("email", 255)->uniqid();
            $table->date("dateDeNaissance", 255);
            $table->integer("villeId");
            $table->timestamps();
        });
        // ->nullable(); ???
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('etudiants');
    }
}
