<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Reserva;
use Carbon\Carbon;

class ReservaController extends Controller
{
    public function index(Request $request)
    {
        $query = Reserva::query();

        // Búsqueda por nombre de cliente o habitación
        if ($request->filled('search')) {
            $search = $request->search;
            $query->where(function($q) use ($search) {
                $q->where('NombresCliente', 'like', "%{$search}%")
                  ->orWhere('NumeroHabitacion', 'like', "%{$search}%");
            });
        }

        $reservas = $query->orderBy('created_at', 'desc')->get();
        
        return view('reservas.index', compact('reservas'));
    }

    public function create()
    {
        return view('reservas.create');
    }

    public function store(Request $request)
    {
        // Verificar disponibilidad de la habitación en esa fecha
        $conflicto = Reserva::where('NumeroHabitacion', $request->NumeroHabitacion)
            ->where('FechaLlegada', $request->FechaLlegada)
            ->exists();

        if ($conflicto) {
            return back()->withErrors(['NumeroHabitacion' => 'La habitación ya está reservada para ese día. Por favor escoja otra habitación u otra fecha de llegada.'])->withInput();
        }

        $mensajes = [
            'FechaSalida.after' => 'La fecha de salida debe ser al menos un día después de la fecha de llegada.',
            'FechaLlegada.after_or_equal' => 'La fecha de llegada no puede ser una fecha pasada.',
            'NumeroAdultos.integer' => 'El número de adultos debe ser solo números enteros.',
            'NumeroAdultos.min' => 'El número de adultos debe ser un valor positivo mayor a cero.',
            'NumeroNinos.integer' => 'El número de niños debe ser solo números enteros.',
            'NumeroNinos.min' => 'El número de niños no puede ser un valor negativo.'
        ];

        $validatedData = $request->validate([
            'NombresCliente' => 'required|string|max:255',
            'NumeroHabitacion' => 'required|string|max:50',
            'FechaLlegada' => 'required|date|after_or_equal:today',
            'FechaSalida' => 'required|date|after:FechaLlegada',
            'NumeroAdultos' => 'required|integer|min:1|max:10',
            'NumeroNinos' => 'required|integer|min:0|max:10'
        ], $mensajes);

        // Calcular Noches y Precio
        $entrada = Carbon::parse($validatedData['FechaLlegada']);
        $salida = Carbon::parse($validatedData['FechaSalida']);
        $noches = $entrada->diffInDays($salida);
        
        // Precio base ejemplo: $50 por adulto, $25 por niño, por noche.
        $precioPorNoche = ($validatedData['NumeroAdultos'] * 50) + ($validatedData['NumeroNinos'] * 25);
        $precioTotal = $noches * $precioPorNoche;

        $validatedData['NumeroNoches'] = $noches;
        $validatedData['PrecioTotal'] = $precioTotal;

        Reserva::create($validatedData);

        return redirect()->route('reservas.index')
            ->with('success', 'Reserva creada exitosamente. El precio total y las noches fueron calculados automáticamente.');
    }

    public function show(Reserva $reserva)
    {
        return view('reservas.show', compact('reserva'));
    }

    public function edit(Reserva $reserva)
    {
        return view('reservas.edit', compact('reserva'));
    }

    public function update(Request $request, Reserva $reserva)
    {
        // Verificar disponibilidad de la habitación ignorando esta misma reserva
        $conflicto = Reserva::where('NumeroHabitacion', $request->NumeroHabitacion)
            ->where('FechaLlegada', $request->FechaLlegada)
            ->where('id', '!=', $reserva->id)
            ->exists();

        if ($conflicto) {
            return back()->withErrors(['NumeroHabitacion' => 'La habitación ya está reservada para ese día. Por favor escoja otra habitación u otra fecha de llegada.'])->withInput();
        }

        $mensajes = [
            'FechaSalida.after' => 'La fecha de salida debe ser al menos un día después de la fecha de llegada.',
            'NumeroAdultos.integer' => 'El número de adultos debe ser solo números enteros.',
            'NumeroAdultos.min' => 'El número de adultos debe ser un valor positivo mayor a cero.',
            'NumeroNinos.integer' => 'El número de niños debe ser solo números enteros.',
            'NumeroNinos.min' => 'El número de niños no puede ser un valor negativo.'
        ];

        $validatedData = $request->validate([
            'NombresCliente' => 'required|string|max:255',
            'NumeroHabitacion' => 'required|string|max:50',
            'FechaLlegada' => 'required|date',
            'FechaSalida' => 'required|date|after:FechaLlegada',
            'NumeroAdultos' => 'required|integer|min:1|max:10',
            'NumeroNinos' => 'required|integer|min:0|max:10'
        ], $mensajes);

        // Recalcular Noches y Precio
        $entrada = Carbon::parse($validatedData['FechaLlegada']);
        $salida = Carbon::parse($validatedData['FechaSalida']);
        $noches = $entrada->diffInDays($salida);
        
        $precioPorNoche = ($validatedData['NumeroAdultos'] * 50) + ($validatedData['NumeroNinos'] * 25);
        $precioTotal = $noches * $precioPorNoche;

        $validatedData['NumeroNoches'] = $noches;
        $validatedData['PrecioTotal'] = $precioTotal;

        $reserva->update($validatedData);

        return redirect()->route('reservas.index')
            ->with('success', 'Reserva actualizada exitosamente.');
    }

    public function destroy(Reserva $reserva)
    {
        $reserva->delete();
        return redirect()->route('reservas.index')
            ->with('success', 'Reserva eliminada exitosamente.');
    }
}
