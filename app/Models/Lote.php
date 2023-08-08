<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Model;

/**
 * Class Lote
 * 
 * @property int $id_lote
 * @property int $stock
 * @property Carbon $vencimiento
 * @property int $lote_id_prod
 * @property int $lote_id_prov
 * @property int $id_sucursal
 * 
 * @property Sucursal $sucursal
 * @property Producto $producto
 * @property Proveedor $proveedor
 * @property Collection|DetalleVentum[] $detalle_venta
 *
 * @package App\Models
 */
class Lote extends Model
{
	protected $table = 'lote';
	protected $primaryKey = 'id_lote';
	public $timestamps = false;

	protected $casts = [
		'stock' => 'int',
		'vencimiento' => 'datetime',
		'lote_id_prod' => 'int',
		'lote_id_prov' => 'int',
		'id_sucursal' => 'int'
	];

	protected $fillable = [
		'stock',
		'vencimiento',
		'lote_id_prod',
		'lote_id_prov',
		'id_sucursal'
	];

	public function sucursal()
	{
		return $this->belongsTo(Sucursal::class, 'id_sucursal');
	}

	public function producto()
	{
		return $this->belongsTo(Producto::class, 'lote_id_prod');
	}

	public function proveedor()
	{
		return $this->belongsTo(Proveedor::class, 'lote_id_prov');
	}

	public function detalle_venta()
	{
		return $this->hasMany(DetalleVentum::class, 'id__det_lote');
	}
}
