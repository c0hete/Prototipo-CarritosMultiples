<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * Class VentaDetalle
 * 
 * @property int $id
 * @property int|null $id_venta
 * @property int|null $id_producto
 * @property int|null $cantidad
 * @property float|null $precio
 * 
 * @property Ventum|null $ventum
 * @property Producto|null $producto
 *
 * @package App\Models
 */
class VentaDetalle extends Model
{
	protected $table = 'venta_detalle';
	public $timestamps = false;

	protected $casts = [
		'id_venta' => 'int',
		'id_producto' => 'int',
		'cantidad' => 'int',
		'precio' => 'float'
	];

	protected $fillable = [
		'id_venta',
		'id_producto',
		'cantidad',
		'precio'
	];

	public function ventum()
	{
		return $this->belongsTo(Ventum::class, 'id_venta');
	}

	public function producto()
	{
		return $this->belongsTo(Producto::class, 'id_producto');
	}
}
