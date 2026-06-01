<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Reserva extends Model
{
    use HasFactory;

    protected $fillable = [
        'NombresCliente',
        'NumeroHabitacion',
        'FechaLlegada',
        'FechaSalida',
        'NumeroNoches',
        'NumeroAdultos',
        'NumeroNinos',
        'PrecioTotal'
    ];
}
