<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="{{ asset('assets/css/modal-carrito.css') }}" rel="stylesheet">
    <!-- Incluir estilos de Bootstrap -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css">

    <title> @yield('title')</title>
   
</head>
<body>
    @yield('content')
    @yield('scripts')
    <footer>
    </footer>
    <script src="{{ asset('assets/js/carritos-multiples.js') }}" type="module"></script>
    <!-- Incluir scripts de Bootstrap -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>

</body>
</html>


