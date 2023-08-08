<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Producto;
use App\Models\Farmacia;
use App\Models\Laboratorio;
use App\Models\Comuna;
use App\Models\Sucursal; // Asegúrate de tener la referencia correcta a tu modelo Sucursal

class ProductosController extends Controller
{
    public function index(Request $request)
    {
        $order = $request->input('order', 'asc');
        $query = Producto::query();

        // Aplicar filtros
        if ($request->filled('farmacia') && $request->input('farmacia') !== 'todos') {
            $query->whereHas('sucursal.farmacia', function ($query) use ($request) {
                $query->where('rut_farmacia', $request->input('farmacia'));
            });
        }

        if ($request->filled('laboratorio') && $request->input('laboratorio') !== 'todos') {
            $query->where('prod_lab', $request->input('laboratorio'));
        }

        if ($request->filled('comuna') && $request->input('comuna') !== 'todos') {
            $query->whereHas('sucursal.comuna', function ($query) use ($request) {
                $query->where('Codigo', $request->input('comuna'));
            });
        }

        $productos = $query->orderBy('precio_neto', $order)->paginate(100);

        // Obtener las farmacias
        $farmacias = Farmacia::pluck('nombre_farmacia', 'rut_farmacia')->prepend('Todos', 'todos');

        // Obtener los laboratorios
        $laboratorios = Laboratorio::pluck('nombre', 'id_laboratorio')->prepend('Todos', 'todos');

        // Obtener las comunas
        $comunas = Comuna::pluck('Nombre', 'Codigo')->prepend('Todas', 'todos');

        // Agregar los filtros seleccionados al formulario
        $selectedFarmacia = $request->input('farmacia', 'todos');
        $selectedLaboratorio = $request->input('laboratorio', 'todos');
        $selectedComuna = $request->input('comuna', 'todos');

        // Obtener la sucursal
        $sucursal = Sucursal::find(1); // Recupera la sucursal con ID 1

        return view('index', compact('productos', 'farmacias', 'laboratorios', 'comunas', 'selectedFarmacia', 'selectedLaboratorio', 'selectedComuna', 'sucursal'));
    }

    public function detalles(Request $request)
    {
        $productoId = $request->input('producto_id');
        $producto = Producto::find($productoId);

        if (!$producto) {
            abort(404); 
        }

        return view('detalles', compact('producto'));
    }
    public function apiProductos(Request $request)
    {
        $order = $request->input('order', 'asc');
        $query = Producto::query();
        // Ordenar y obtener los productos
        $productos = $query->orderBy('precio_neto', $order)->get();

        // Devolver los productos en formato JSON
        return response()->json($productos);
    }
    

//     public function index()
// {
//     $recetaCargada = // Lógica para verificar si se ha cargado la receta
    
//     return view('carrito.index', compact('recetaCargada'));
// }

}
