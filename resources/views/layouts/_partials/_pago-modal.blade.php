<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Realizar Pago</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="../../css/smart_wizard.min.css">
    <link rel="stylesheet" href="../../css/smart_wizard_theme_arrows.min.css">
</head>

<body>
    {{-- <button type="button" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#exampleModal">Realizar
        pago</button> --}}
    <!-- Modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog modal-lg modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Rellena tus datos para continuar con la
                        compra</h5>
                </div>
                <div class="modal-body">
                    <div id="smartwizard">
                        <ul class="nav nav-pills">
                            <li><a href="#step-1">Paso 1<br /><small>Contacto</small></a></li>
                            <li><a href="#step-2">Paso 2<br /><small>Tus datos</small></a></li>
                            <li><a href="#step-3">Paso 3<br /><small>Método de Pago</small></a></li>
                            <li><a href="#step-4">Paso 4<br /><small>Detalles</small></a></li>
                        </ul>
                        <div class="mt-4">
                            <div id="step-1">
                                <div class="row">
                                    <div class="col-md-6">
                                        <input type="text" class="form-control" placeholder="Primer Nombre"
                                            id="nombre" required>
                                    </div>
                                    <div class="col-md-6">
                                        <input type="text" class="form-control" placeholder="Primer Apellido"
                                            id="apellido" required>
                                    </div>
                                </div>
                                <div class="row mt-3">
                                    <div class="col-md-6">
                                        <input type="email" class="form-control" placeholder="Correo Electrónico"
                                            id="correo" required>
                                    </div>
                                    <div class="col-md-6">
                                        <input type="text" class="form-control" placeholder="Número de Teléfono"
                                            id="telefono" required>
                                    </div>
                                </div>
                            </div>
                            <div id="step-2">
                                <div class="row">
                                    <div class="col-md-6">
                                        <input type="text" class="form-control" placeholder="Dirección" id="direccion"
                                            required>
                                    </div>
                                    <div class="col-md-6">
                                        <input type="text" class="form-control" placeholder="Ciudad" id="ciudad"
                                            required>
                                    </div>
                                </div>
                                <div class="row mt-3">
                                    <div class="col-md-6">
                                        <label for="pais">País:</label>
                                        <select id="pais" name="pais" class="form-control" required>
                                            <option value="">Seleccionar país</option>

                                        </select>
                                    </div>
                                    <div class="col-md-6">
                                        <label for="region">Región:</label>
                                        <select id="region" name="region" class="form-control" required>
                                            <option value="">Seleccionar región</option>

                                        </select>
                                    </div>
                                </div>
                                <div class="row mt-3">
                                    <div class="col-md-6">
                                        <label for="provincia">Provincia:</label>
                                        <select id="provincia" name="provincia" class="form-control" required>
                                            <option value="">Seleccionar provincia</option>
                                        </select>
                                    </div>
                                    <div class="col-md-6">
                                        <label for="comuna">Comuna:</label>
                                        <select id="comuna" name="comuna" class="form-control" required>
                                            <option value="">Seleccionar comuna</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div id="step-3" class="">
                                <div class="row">
                                    <div class="col-md-6">
                                        <input type="text" class="form-control" placeholder="Número de Tarjeta"
                                            id="tarjeta" required>
                                    </div>
                                    <div class="col-md-6">
                                        <input type="text" class="form-control" placeholder="Titular de la Tarjeta"
                                            id="titularTarjeta" required>
                                    </div>
                                </div>
                                <div class="row mt-3">
                                    <div class="col-md-6">
                                        <input type="text" class="form-control" placeholder="CVV" id="cvv" required>
                                    </div>
                                    <div class="col-md-6">
                                        <input type="text" class="form-control" placeholder="Número de Teléfono"
                                            id="telefonoPago" required>
                                    </div>
                                </div>
                            </div>
                            <div id="step-4" class="">
                                <div class="row">
                                    <div class="col-md-12">
                                        <h4>Detalles:</h4>
                                        <p>Nombre: <span id="nombreMostrado"></span></p>
                                        <p>Apellido: <span id="apellidoMostrado"></span></p>
                                        <p>Correo Electrónico: <span id="correoMostrado"></span></p>
                                        <p>Dirección: <span id="direccionMostrada"></span></p>
                                        <p>Ciudad: <span id="ciudadMostrada"></span></p>
                                        <p>País: <span id="paisMostrado"></span></p>
                                        <p>Región: <span id="regionMostrada"></span></p>
                                        <p>Provincia: <span id="provinciaMostrada"></span></p>
                                        <p>Comuna: <span id="comunaMostrada"></span></p>
                                        <p>Número de tarjeta: <span id="tarjetaMostrada"></span></p>
                                        <p>Titular de la tarjeta: <span id="titularTarjetaMostrado"></span></p>
                                        <p>CVV: <span id="cvvMostrado"></span></p>
                                        <p>Número de teléfono (pago): <span id="telefonoPagoMostrado"></span></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                    <button type="button" class="btn btn-success" data-bs-dismiss="modal">Enviar</button>
                </div>
            </div>
        </div>
    </div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script type="text/javascript"
        src="https://cdn.jsdelivr.net/gh/bbbootstrap/libraries@main/jquery.smartWizard.min.js"></script>

    <script>
        $(document).ready(function() {
            // Al cambiar el país
            $('#pais').change(function() {
                var paisID = $(this).val();
                if (paisID !== '') {
                    // Realizar una petición AJAX para obtener las regiones del país seleccionado
                    $.ajax({
                        url: 'obtener_regiones.php',
                        type: 'POST',
                        data: { paisID: paisID },
                        dataType: 'json',
                        success: function(response) {
                            // Limpiar el select de región, provincia y comuna
                            $('#region').empty();
                            $('#provincia').empty();
                            $('#comuna').empty();
                            // Agregar las opciones de región
                            $('#region').append('<option value="">Seleccionar región</option>');
                            $.each(response, function(index, region) {
                                $('#region').append('<option value="' + region.Codigo + '">' + region.Nombre + '</option>');
                            });
                        }
                    });
                } else {
                    // Limpiar el select de región, provincia y comuna si no se selecciona ningún país
                    $('#region').empty();
                    $('#provincia').empty();
                    $('#comuna').empty();
                    $('#region').append('<option value="">Seleccionar región</option>');
                    $('#provincia').append('<option value="">Seleccionar provincia</option>');
                    $('#comuna').append('<option value="">Seleccionar comuna</option>');
                }
            });

            // Al cambiar la región
            $('#region').change(function() {
                var regionID = $(this).val();
                if (regionID !== '') {
                    // Realizar una petición AJAX para obtener las provincias de la región seleccionada
                    $.ajax({
                        url: 'obtener_provincias.php',
                        type: 'POST',
                        data: { regionID: regionID },
                        dataType: 'json',
                        success: function(response) {
                            // Limpiar el select de provincia y comuna
                            $('#provincia').empty();
                            $('#comuna').empty();
                            // Agregar las opciones de provincia
                            $('#provincia').append('<option value="">Seleccionar provincia</option>');
                            $.each(response, function(index, provincia) {
                                $('#provincia').append('<option value="' + provincia.Codigo + '">' + provincia.Nombre + '</option>');
                            });
                        }
                    });
                } else {
                    // Limpiar el select de provincia y comuna si no se selecciona ninguna región
                    $('#provincia').empty();
                    $('#comuna').empty();
                    $('#provincia').append('<option value="">Seleccionar provincia</option>');
                    $('#comuna').append('<option value="">Seleccionar comuna</option>');
                }
            });

            // Al cambiar la provincia
            $('#provincia').change(function() {
                var provinciaID = $(this).val();
                if (provinciaID !== '') {
                    // Realizar una petición AJAX para obtener las comunas de la provincia seleccionada
                    $.ajax({
                        url: 'obtener_comunas.php',
                        type: 'POST',
                        data: { provinciaID: provinciaID },
                        dataType: 'json',
                        success: function(response) {
                            // Limpiar el select de comuna
                            $('#comuna').empty();
                            // Agregar las opciones de comuna
                            $('#comuna').append('<option value="">Seleccionar comuna</option>');
                            $.each(response, function(index, comuna) {
                                $('#comuna').append('<option value="' + comuna.Codigo + '">' + comuna.Nombre + '</option>');
                            });
                        }
                    });
                } else {
                    // Limpiar el select de comuna si no se selecciona ninguna provincia
                    $('#comuna').empty();
                    $('#comuna').append('<option value="">Seleccionar comuna</option>');
                }
            });
        });
    </script>
</body>

</html>
