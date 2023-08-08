<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * Class VentaProducto
 * 
 * @property int $id_ventaproducto
 * @property int $cantidad
 * @property float $subtotal
 * @property int $producto_id_producto
 * @property int $venta_id_venta
 * 
 * @property Producto $producto
 * @property Ventum $ventum
 *
 * @package App\Models
 */
class VentaProducto extends Model
{
	protected $table = 'venta_producto';
	protected $primaryKey = 'id_ventaproducto';
	public $timestamps = false;

	protected $casts = [
		'cantidad' => 'int',
		'subtotal' => 'float',
		'producto_id_producto' => 'int',
		'venta_id_venta' => 'int'
	];

	protected $fillable = [
		'cantidad',
		'subtotal',
		'producto_id_producto',
		'venta_id_venta'
	];

	public function producto()
	{
		return $this->belongsTo(Producto::class, 'producto_id_producto');
	}

	public function ventum()
	{
		return $this->belongsTo(Ventum::class, 'venta_id_venta');
	}
}
