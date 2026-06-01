@extends('layouts.app')

@section('title', 'Listado de Reservas')

@section('content')
<div class="row mb-4 align-items-center">
    <div class="col-md-3">
        <h2 class="mb-0">Gestión de Reservas</h2>
    </div>
    <div class="col-md-9 text-end">
        <form action="{{ route('reservas.index') }}" method="GET" class="d-flex justify-content-end gap-2 align-items-center">
            <!-- Barra de búsqueda -->
            <input type="text" name="search" class="form-control" placeholder="Buscar cliente o habitación..." value="{{ request('search') }}" style="max-width: 250px;">
            
            <button type="submit" class="btn btn-secondary"><i class="bi bi-search"></i> Buscar</button>
            
            @if(request()->has('search'))
                <a href="{{ route('reservas.index') }}" class="btn btn-outline-secondary text-nowrap">Limpiar Filtros</a>
            @endif

            <a href="{{ route('reservas.create') }}" class="btn btn-primary ms-2 text-nowrap">
                <i class="bi bi-plus-circle"></i> Nueva Reserva
            </a>
        </form>
    </div>
</div>

<div class="card shadow-sm border-0">
    <div class="card-body p-0">
        <div class="table-responsive">
            <table class="table table-hover mb-0">
                <thead class="table-light">
                    <tr>
                        <th>ID</th>
                        <th>Cliente</th>
                        <th>Habitación</th>
                        <th>Llegada</th>
                        <th>Salida</th>
                        <th>Noches</th>
                        <th>Total</th>
                        <th class="text-center">Acciones</th>
                    </tr>
                </thead>
                <tbody>
                    @forelse ($reservas as $reserva)
                    <tr>
                        <td>#{{ $reserva->id }}</td>
                        <td><strong>{{ $reserva->NombresCliente }}</strong></td>
                        <td>{{ $reserva->NumeroHabitacion }}</td>
                        <td>{{ \Carbon\Carbon::parse($reserva->FechaLlegada)->format('d/m/Y') }}</td>
                        <td>{{ \Carbon\Carbon::parse($reserva->FechaSalida)->format('d/m/Y') }}</td>
                        <td>{{ $reserva->NumeroNoches }}</td>
                        <td><strong>${{ number_format($reserva->PrecioTotal, 2) }}</strong></td>
                        <td class="text-center">
                            <div class="btn-group" role="group">
                                <a href="{{ route('reservas.show', $reserva->id) }}" class="btn btn-sm btn-info text-white" title="Ver Info">
                                    <i class="bi bi-eye"></i>
                                </a>
                                <a href="{{ route('reservas.edit', $reserva->id) }}" class="btn btn-sm btn-primary" title="Editar">
                                    <i class="bi bi-pencil"></i>
                                </a>
                                <form action="{{ route('reservas.destroy', $reserva->id) }}" method="POST" class="d-inline" onsubmit="return confirm('¿Estás seguro de eliminar esta reserva?');">
                                    @csrf
                                    @method('DELETE')
                                    <button type="submit" class="btn btn-sm btn-danger" title="Eliminar">
                                        <i class="bi bi-trash"></i>
                                    </button>
                                </form>
                            </div>
                        </td>
                    </tr>
                    @empty
                    <tr>
                        <td colspan="8" class="text-center py-4 text-muted">
                            <i class="bi bi-inbox fs-2 d-block mb-2"></i>
                            No hay reservas registradas.
                        </td>
                    </tr>
                    @endforelse
                </tbody>
            </table>
        </div>
    </div>
</div>
@endsection
