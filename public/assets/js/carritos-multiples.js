// Definimos el objeto carrito como un objeto vacío
let carrito = {};

// Función para actualizar el carrito en el LocalStorage
function updateCart() {
    localStorage.setItem('carrito', JSON.stringify(carrito));
}

function mostrarCarritos() {
    const carritoModal = new bootstrap.Modal(document.getElementById('carritoModal'));
    const carritoModalLabel = document.getElementById('carritoModalLabel');

    const totalCarritos = getTotalCarritosActivos();
    carritoModalLabel.textContent = `Carritos de Compras: ${totalCarritos} en total`;
    const carritoModalBody = document.getElementById('carritoModalBody');
    carritoModalBody.innerHTML = ''; // Limpiar el contenido existente

    let totalGeneral = 0; // Variable para almacenar el total general de todos los carritos

    for (let i = 0; i < localStorage.length; i++) {
        const key = localStorage.key(i);
        if (key.startsWith('carrito_')) {
            const sucursalId = key.split('_')[1];
            const carrito = JSON.parse(localStorage.getItem(key));

            const div = document.createElement('div');
            div.classList.add('carrito-container', 'p-3', 'carrito-hover');

            // Obtener el nombre de la farmacia y la sucursal desde los atributos del botón "Agregar al carrito"
            const farmaciaNombre = document.querySelector(`[data-sucursal-id="${sucursalId}"]`).getAttribute('data-farmacia-nombre');
            const sucursalNombre = document.querySelector(`[data-sucursal-id="${sucursalId}"]`).getAttribute('data-sucursal-nombre');

            // Mostrar el nombre de la farmacia y la sucursal en el modal
            div.innerHTML = `
                <div class="d-flex justify-content-between mb-2">
                    <p class="small-muted-text">Farmacia:</p>
                    <h4>${farmaciaNombre}</h4>
                </div>
                <div class="d-flex justify-content-between">
                    <p class="small-muted-text">Sucursal:</p>
                    <h6>${sucursalNombre}</h6>
                </div>
            `;

            const ul = document.createElement('ul');
            ul.classList.add('productos-lista');
            let totalPrecios = 0;

            carrito.forEach(function (producto) {
                const li = document.createElement('li');

                // Calcular el precio con IVA y el 10% adicional antes de mostrarlo en la lista de productos del carrito
                const precioConIva = producto.precio_neto * 1.19 * 1.1;
                const precioConFormato = formatoCantidad(precioConIva.toFixed(0));

                // Crear el input numérico para la cantidad
                const inputCantidad = document.createElement('input');
                inputCantidad.type = 'number';
                inputCantidad.min = '1';
                inputCantidad.value = producto.cantidad;
                inputCantidad.classList.add('form-control', 'cantidad-input');
                inputCantidad.addEventListener('change', function (e) {
                    // Actualizar la cantidad del producto en el carrito cuando cambie el valor del input
                    producto.cantidad = parseInt(e.target.value);
                    updateCart();
                    calcularTotalCarrito(); // Llamamos a la función para recalcular el total del carrito
                });

                // Crear el contenedor para mostrar el nombre y concentración del producto, la cantidad y el precio
                const divProducto = document.createElement('div');
                divProducto.classList.add('d-flex', 'justify-content-between', 'align-items-center');

                const divNombre = document.createElement('div');
                const divCantidad = document.createElement('div');
                const divPrecio = document.createElement('div');

                divNombre.textContent = `${producto.nombre} ${producto.concentracion}`;
                divCantidad.appendChild(inputCantidad);
                divPrecio.textContent = `$${precioConFormato}`;

                divProducto.appendChild(divNombre);
                divProducto.appendChild(divCantidad);
                divProducto.appendChild(divPrecio);

                li.appendChild(divProducto);
                ul.appendChild(li);

                totalPrecios += precioConIva * producto.cantidad;
            });

            div.appendChild(ul);

            // Agregar total de precios al contenedor exterior
            const totalContainer = document.createElement('div');
            totalContainer.classList.add('d-flex', 'justify-content-between', 'align-items-center', 'total-container');
            totalContainer.textContent = `Total de este carrito: $${formatoCantidad(totalPrecios.toFixed(0))}`;

            // Agregar botón para eliminar carrito
            const btnEliminar = document.createElement('button');
            btnEliminar.textContent = 'Eliminar carrito';
            btnEliminar.classList.add('btn', 'btn-danger', 'eliminar-carrito');
            btnEliminar.setAttribute('data-sucursal-id', sucursalId);
            btnEliminar.addEventListener('click', function (e) {
                e.stopPropagation();
                eliminarCarrito(sucursalId);
            });

            totalContainer.appendChild(btnEliminar); // Agregar botón al contenedor de total
            div.appendChild(totalContainer); // Agregar contenedor de total al div principal

            carritoModalBody.appendChild(div);

            totalGeneral += totalPrecios;
        }
    }

    // Mostrar el total general de todos los carritos en el pie de página del modal
    const totalCarritosElement = document.getElementById('totalCarritos');
    totalCarritosElement.textContent = `Total de todos los carritos: $${formatoCantidad(totalGeneral.toFixed(0))}`;
}

// Función para aplicar formato de miles a una cantidad numérica
function formatoCantidad(cantidad) {
    return cantidad.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ".");
}

// Evento click para los botones "Agregar al carrito"
document.querySelectorAll('.add-to-cart').forEach(function (button) {
    button.addEventListener('click', function (e) {
        const productId = e.target.getAttribute('data-product-id');
        const nombre = e.target.getAttribute('data-product-nombre');
        const precioNeto = e.target.getAttribute('data-product-precio');
        const concentracion = e.target.getAttribute('data-product-concentracion');
        const sucursalId = e.target.getAttribute('data-sucursal-id');
        const farmaciaNombre = e.target.getAttribute('data-farmacia-nombre'); // Nuevo
        const sucursalNombre = e.target.getAttribute('data-sucursal-nombre'); // Nuevo

        // Obtenemos el carrito de la sucursal desde localStorage o lo inicializamos como un array vacío
        let carritoSucursal = JSON.parse(localStorage.getItem('carrito_' + sucursalId)) || [];

        // Verificar si el producto ya está en el carrito de la sucursal
        const existingProduct = carritoSucursal.find(item => item.id_producto === productId);
        if (existingProduct) {
            // Si el producto ya está en el carrito, sumar las cantidades
            existingProduct.cantidad++;
        } else {
            // Si el producto no está en el carrito, agregarlo con cantidad 1
            carritoSucursal.push({
                id_producto: productId,
                nombre: nombre,
                precio_neto: precioNeto,
                cantidad: 1,
                concentracion: concentracion,
                farmacia_nombre: farmaciaNombre, // Nuevo
                direccion_sucursal: sucursalNombre // Nuevo
            });
        }

        // Guardar el carrito de la sucursal en localStorage
        localStorage.setItem('carrito_' + sucursalId, JSON.stringify(carritoSucursal));

        // Mostrar una alerta de éxito utilizando SweetAlert
        Swal.fire({
            icon: 'success',
            title: 'Producto agregado al carrito',
            text: `"${nombre}" ha sido agregado al carrito ${farmaciaNombre} - ${sucursalNombre}`,
            showConfirmButton: false,
            timer: 3000
        });

        // Mostrar los productos en el carrito modal
        mostrarCarritos();
    });
});



// Mostrar los productos del carrito al cargar la página
mostrarCarritos();


// Nueva función para calcular el total general de todos los carritos
function calcularTotalGeneral() {
    let totalGeneral = 0;

    // Iterar sobre las claves del LocalStorage para obtener los carritos y sumar los totales individuales
    for (let i = 0; i < localStorage.length; i++) {
        const key = localStorage.key(i);
        if (key.startsWith('carrito_')) {
            const carrito = JSON.parse(localStorage.getItem(key));
            let totalCarrito = carrito.reduce((total, producto) => total + producto.precio_neto * producto.cantidad, 0);
            totalGeneral += totalCarrito;
        }
    }

    return totalGeneral;
}

// Función para mostrar el total general de todos los carritos en el pie de página del modal
function mostrarTotalGeneralEnModal() {
    const totalGeneral = calcularTotalGeneral();

    // Calcular el total con IVA y el 10% adicional
    const totalConIva = totalGeneral * 1.19 * 1.1;

    // Formatear el total con formato de miles
    const totalConIvaFormateado = formatoCantidad(totalConIva.toFixed(0));

    const totalCarritosElement = document.getElementById('totalCarritos');
    totalCarritosElement.textContent = `Total de todos los carritos: $${totalConIvaFormateado}`;
}


// Llama a la función para mostrar el total general al cargar el modal y cada vez que se actualice la lista de carritos
mostrarTotalGeneralEnModal();

function getTotalCarritosActivos() {
    let totalCarritos = 0;
  
    // Iterar sobre las claves del LocalStorage para contar los carritos
    for (let i = 0; i < localStorage.length; i++) {
      const key = localStorage.key(i);
      if (key.startsWith('carrito_')) {
        totalCarritos++;
      }
    }
  
    return totalCarritos;
}

// Función para eliminar un carrito del localStorage
function eliminarCarrito(sucursalId) {
    // Mostrar una alerta de confirmación utilizando SweetAlert
    Swal.fire({
        title: '¿Estás seguro?',
        text: 'Estás a punto de eliminar este carrito. Esta acción no se puede deshacer.',
        icon: 'warning',
        showCancelButton: true,
        confirmButtonText: 'Eliminar',
        cancelButtonText: 'Cancelar'
    }).then((result) => {
        if (result.isConfirmed) {
            // Si se confirma la eliminación, eliminar el carrito del localStorage
            const carritoKey = 'carrito_' + sucursalId;
            localStorage.removeItem(carritoKey);
            // Mostrar una alerta de éxito
            Swal.fire('Carrito eliminado', 'El carrito ha sido eliminado exitosamente.', 'success');
            // Actualizar la vista después de eliminar
            mostrarCarritos();
        }
    });
}
