@extends('layouts.app')

@section('title', 'Detalles de la Reserva')

@section('content')
<div class="row">
    <div class="col-md-8 mx-auto">
        <div class="card shadow-sm border-0">
            <div class="card-header bg-primary text-white d-flex justify-content-between align-items-center">
                <h4 class="mb-0"><i class="bi bi-calendar-check"></i> Reserva #{{ $reserva->id }}</h4>
            </div>
            <div class="card-body p-4">
                
                <div class="row mb-4">
                    <div class="col-md-6">
                        <h5 class="text-muted border-bottom pb-2 mb-3">Información del Cliente</h5>
                        <p class="mb-1"><i class="bi bi-person-fill text-primary"></i> <strong>Nombres:</strong> {{ $reserva->NombresCliente }}</p>
                        <p class="mb-1"><i class="bi bi-people-fill text-primary"></i> <strong>Huéspedes:</strong> {{ $reserva->NumeroAdultos }} Adultos, {{ $reserva->NumeroNinos }} Niños</p>
                    </div>
                    <div class="col-md-6">
                        <h5 class="text-muted border-bottom pb-2 mb-3">Detalles de la Habitación</h5>
                        <p class="mb-1"><i class="bi bi-door-open-fill text-primary"></i> <strong>Habitación N°:</strong> {{ $reserva->NumeroHabitacion }}</p>
                    </div>
                </div>

                <div class="row mb-4">
                    <div class="col-12">
                        <h5 class="text-muted border-bottom pb-2 mb-3">Fechas de Estadía</h5>
                        <div class="d-flex align-items-center justify-content-center bg-light p-3 rounded">
                            <div class="text-center px-4">
                                <span class="d-block text-muted small">Llegada</span>
                                <strong>{{ \Carbon\Carbon::parse($reserva->FechaLlegada)->format('d de M, Y') }}</strong>
                            </div>
                            <div class="px-4 text-muted">
                                <i class="bi bi-arrow-right fs-4"></i>
                            </div>
                            <div class="text-center px-4">
                                <span class="d-block text-muted small">Salida</span>
                                <strong>{{ \Carbon\Carbon::parse($reserva->FechaSalida)->format('d de M, Y') }}</strong>
                            </div>
                        </div>
                        <p class="text-center mt-2 text-muted small"><i class="bi bi-moon-fill"></i> Total calculadas: {{ $reserva->NumeroNoches }} noches</p>
                    </div>
                </div>

                <div class="row mb-4">
                    <div class="col-12 text-center">
                        <div class="p-3 bg-success text-white rounded shadow-sm">
                            <h4 class="mb-1">Precio Total: ${{ number_format($reserva->PrecioTotal, 2) }}</h4>
                            <div class="small opacity-75" style="font-size: 0.85em;">
                                Cálculo: ($50 × {{ $reserva->NumeroAdultos }} adultos + $25 × {{ $reserva->NumeroNinos }} niños) × {{ $reserva->NumeroNoches }} noches
                            </div>
                        </div>
                    </div>
                </div>

                <div class="d-flex justify-content-between mt-4 pt-3 border-top">
                    <a href="{{ route('reservas.index') }}" class="btn btn-outline-secondary">
                        <i class="bi bi-arrow-left"></i> Volver al listado
                    </a>
                    <div>
                        <a href="{{ route('reservas.edit', $reserva->id) }}" class="btn btn-primary me-2">
                            <i class="bi bi-pencil"></i> Editar
                        </a>
                        <form action="{{ route('reservas.destroy', $reserva->id) }}" method="POST" class="d-inline" onsubmit="return confirm('¿Estás seguro de cancelar y eliminar esta reserva?');">
                            @csrf
                            @method('DELETE')
                            <button type="submit" class="btn btn-danger">
                                <i class="bi bi-trash"></i> Eliminar
                            </button>
                        </form>
                    </div>
                </div>

            </div>
            <div class="card-footer bg-light text-muted text-center small">
                Reserva registrada el {{ $reserva->created_at->format('d/m/Y h:i A') }}
            </div>
        </div>
    </div>
</div>
@endsection
