@extends('layouts.app')

@section('title', 'Editar Reserva')

@section('content')
<div class="row">
    <div class="col-md-8 mx-auto">
        <div class="card shadow-sm border-0">
            <div class="card-header bg-white pb-0 border-0">
                <h3 class="mt-3">Editar Reserva #{{ $reserva->id }}</h3>
                <div class="alert alert-info mt-3 py-2 border-0 shadow-sm" style="background-color: #e9f7fe;">
                    <i class="bi bi-info-circle-fill text-info me-2"></i> <strong>Tarifas por noche:</strong> $50 por cada adulto y $25 por cada niño. 
                    <br><small class="text-muted ms-4">El precio total se recalculará automáticamente si cambias las fechas o huéspedes.</small>
                </div>
                <hr>
            </div>
            <div class="card-body pt-0">
                
                @if ($errors->any())
                    <div class="alert alert-danger">
                        <strong>Por favor, corrige los siguientes errores:</strong>
                        <ul class="mb-0 mt-2">
                            @foreach ($errors->all() as $error)
                                <li>{{ $error }}</li>
                            @endforeach
                        </ul>
                    </div>
                @endif

                <form action="{{ route('reservas.update', $reserva->id) }}" method="POST">
                    @csrf
                    @method('PUT')
                    
                    <div class="row mb-3">
                        <div class="col-md-8">
                            <label class="form-label">Nombres del Cliente *</label>
                            <input type="text" name="NombresCliente" class="form-control" value="{{ old('NombresCliente', $reserva->NombresCliente) }}" required>
                        </div>
                        <div class="col-md-4">
                            <label class="form-label">Número de Habitación *</label>
                            <input type="text" name="NumeroHabitacion" class="form-control" value="{{ old('NumeroHabitacion', $reserva->NumeroHabitacion) }}" required>
                        </div>
                    </div>

                    <div class="row mb-3">
                        <div class="col-md-6">
                            <label class="form-label">Número de Adultos *</label>
                            <input type="number" name="NumeroAdultos" class="form-control" min="1" max="10" value="{{ old('NumeroAdultos', $reserva->NumeroAdultos) }}" required>
                        </div>
                        <div class="col-md-6">
                            <label class="form-label">Número de Niños *</label>
                            <input type="number" name="NumeroNinos" class="form-control" min="0" max="10" value="{{ old('NumeroNinos', $reserva->NumeroNinos) }}" required>
                        </div>
                    </div>

                    <div class="row mb-4">
                        <div class="col-md-6">
                            <label class="form-label">Fecha de Llegada *</label>
                            <input type="date" name="FechaLlegada" class="form-control" value="{{ old('FechaLlegada', $reserva->FechaLlegada) }}" required>
                        </div>
                        <div class="col-md-6">
                            <label class="form-label">Fecha de Salida *</label>
                            <input type="date" name="FechaSalida" class="form-control" value="{{ old('FechaSalida', $reserva->FechaSalida) }}" required>
                        </div>
                    </div>

                    <div class="d-flex justify-content-between">
                        <a href="{{ route('reservas.index') }}" class="btn btn-outline-secondary">Cancelar</a>
                        <button type="submit" class="btn btn-primary"><i class="bi bi-save"></i> Actualizar Reserva</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
@endsection
