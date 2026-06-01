<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateReservasTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('reservas', function (Blueprint $table) {
            $table->id();
            $table->string('NombresCliente');
            $table->string('NumeroHabitacion');
            $table->date('FechaLlegada');
            $table->date('FechaSalida');
            $table->integer('NumeroNoches');
            $table->integer('NumeroAdultos');
            $table->integer('NumeroNinos');
            $table->decimal('PrecioTotal', 8, 2);
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
        Schema::dropIfExists('reservas');
    }
}
