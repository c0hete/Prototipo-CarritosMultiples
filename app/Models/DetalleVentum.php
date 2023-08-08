<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

/**
 * Class DetalleVentum
 * 
 * @property int $id_detalle
 * @property int $det_cantidad
 * @property Carbon $det_vencimiento
 * @property int $id__det_lote
 * @property int $id__det_prod
 * @property int $lote_id_prov
 * @property int $id_det_venta
 * @property bool $estado_activo
 * 
 * @property Producto $producto
 * @property Proveedor $proveedor
 * @property Lote $lote
 * @property Ventum $ventum
 *
 * @package App\Models
 */
class DetalleVentum extends Model
{
	protected $table = 'detalle_venta';
	protected $primaryKey = 'id_detalle';
	public $timestamps = false;

	protected $casts = [
		'det_cantidad' => 'int',
		'det_vencimiento' => 'datetime',
		'id__det_lote' => 'int',
		'id__det_prod' => 'int',
		'lote_id_prov' => 'int',
		'id_det_venta' => 'int',
		'estado_activo' => 'bool'
	];

	protected $fillable = [
		'det_cantidad',
		'det_vencimiento',
		'id__det_lote',
		'id__det_prod',
		'lote_id_prov',
		'id_det_venta',
		'estado_activo'
	];

	public function producto()
	{
		return $this->belongsTo(Producto::class, 'id__det_prod');
	}

	public function proveedor()
	{
		return $this->belongsTo(Proveedor::class, 'lote_id_prov');
	}

	public function lote()
	{
		return $this->belongsTo(Lote::class, 'id__det_lote');
	}

	public function ventum()
	{
		return $this->belongsTo(Ventum::class, 'id_det_venta');
	}
}
