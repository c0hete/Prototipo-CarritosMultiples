@extends('layouts.base')
{{-- @extends('layouts._partials._pago-modal')  --}}
@section('title', 'FarmaPlace')

@section('content')
<div class="container mt-5">
  <div class="row">
    <div class="col-lg-9">
      <div class="card">
        <div class="card-header bg-success text-white">
          Mi Carrito
        </div>
        <div class="card-body">
          <div id="carritoContenedor">
            <!-- Aquí se mostrarán los productos del carrito -->
          </div>
          <hr>
          <div class="text-end">
            <button class="btn btn-danger" onclick="borrarCarrito()">Vaciar carrito</button>
          </div>
        </div>
      </div>
    </div>
    <div class="col-lg-3">
      <div class="card bg-light mb-4">
        <div class="card-body">
          <h5 class="card-title text-center">Resumen de compra</h5>
          <div class="d-flex justify-content-between mb-3">
            <p class="mb-0">Subtotal:</p>
            <p class="mb-0 fw-bold" id="carritoSubtotal"></p>
          </div>
          <div class="d-flex justify-content-between mb-3">
            <p class="mb-0">Envío:</p>
            <p class="mb-0 fw-bold">Gratis</p>
          </div>
          <div class="d-flex justify-content-between mb-3">
            <p class="mb-0">Descuento:</p>
            <p class="mb-0 fw-bold" id="carritoDescuento">-$0.00</p>
          </div>
          <div class="d-flex justify-content-between mb-3">
            <p class="mb-0">IVA:</p>
            <p class="mb-0 fw-bold" id="carritoIVA"></p>
          </div>
          <hr>
          <div class="d-flex justify-content-between">
            <p class="mb-0 fw-bold">Total:</p>
            <h4 class="mb-0" id="carritoTotal"></h4>
          </div>
          
          <hr>
          <h5 class="card-title text-center">Método de pago</h5>
          <div class="text-center">
            <img src="assets/img/visa.png" alt="Visa" class="img-fluid payment-method">
            <img src="assets/img/mastercard.png" alt="Mastercard" class="img-fluid payment-method">
            <img src="assets/img/paypal.png" alt="PayPal" class="img-fluid payment-method">
          </div>
          <div class="text-center mt-4">
            <button type="button" class="btn btn-success btn-lg btn-block btn-pago" onclick="location.href='{{ route('pre-checkout') }}'">Realizar pago</button>
        </div>
      </div>
    </div>
  </div>
</div>
@endsection
