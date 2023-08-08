@extends('layouts.base')

@section('title','Carrito Multiple')

@section('content')
<div class="container">
<div class="productos-column">
    <h1>Lista de Productos</h1>
    <div class="row row-cols-1 row-cols-md-2 g-4">
        @foreach ($productos as $producto)
        <div class="col col-lg-3">
            <div class="card h-100">
                <img src="{{ asset('assets/img/Paracetamol.png') }}" class="card-img-top" alt="Imagen">
                <div class="card-body d-flex flex-column justify-content-between">
                    <h5 class="card-title mb-0">{{ $producto->nombre }} {{ $producto->concentracion }}</h5>
                    @php
                    $precioConIva = $producto->precio_neto * 1.19;
                    @endphp
                    <p class="card-text mb-0 fw-bold text-success">$ {{ number_format($precioConIva, 0, ',', '.') }} <span class="text-success small-text fw-normal">CLP</span></p>
                    <p class="card-text mb-0">Comuna: {{ optional($producto->sucursal->comuna)->Nombre ?? 'Sin comuna' }}</p>
                        <p class="card-text small-text">
                            <span class="fw-bold text-success">Retiro</span> <i class="bi bi-shop text-success"></i> |
                            @if ($producto->condicion_venta != 3 && $producto->condicion_venta != 4 && $producto->condicion_venta != 5)
                            <span class="fw-bold text-success">Despacho</span> <i class="bi bi-truck text-info"></i> |
                            @endif
                            @if ($producto->condicion_venta != 1)
                                <span class="fw-bold text-success">Receta</span> <i class="bi bi-file-medical text-danger"></i>
                            @endif
                        </p><
                        <p class="card-text mb-0">Farmacia: {{ $producto->sucursal->farmacia->nombre_farmacia }}</p>
                        <p class="card-text mb-0">Laboratorio: {{ $producto->laboratorio->nombre }}</p>
                        <p class="card-text mb-0">Sucursal: {{ $producto->sucursal->direccion_sucursal }}</p>
                        <div class="d-flex justify-content-between align-items-center">
                            <a href="{{ route('detalles', ['producto_id' => $producto->id_producto]) }}" 
                                class="btn btn-warning btn-sm text-white mt-2">
                                Ver más
                            </a>
                                                        <li>
                                                            <button class="add-to-cart"
                                                            data-product-id="{{ $producto->id_producto }}"
                                                            data-product-nombre="{{ $producto->nombre }}"
                                                            data-product-precio="{{ $producto->precio_neto }}"
                                                            data-product-concentracion="{{ $producto->concentracion }}"
                                                            data-sucursal-id="{{ $producto->id_sucursal }}"
                                                            data-farmacia-nombre="{{ $producto->sucursal->farmacia->nombre_farmacia }}" 
                                                            data-sucursal-nombre="{{ $producto->sucursal->direccion_sucursal }}"> 
                                                            Agregar al carrito
                                                        </button>
                                                        
                                                    
                        </div> 
                    </div>
                </div>
            </div>
        @endforeach
    </div>
<div class="carritos-column">
    <div class="fixed-top text-end pe-4">
        <button type="button" class="btn btn-warning btn-carrito z-50" id="carritoBtn" data-bs-toggle="modal" data-bs-target="#carritoModal" style="background-color: rgba(255, 193, 7, 0.8); color: black; font-size: 24px;">
            CARRITOS
        </button>
</div>
</div>
@include('layouts._partials._carrito-modal') 
@endsection




