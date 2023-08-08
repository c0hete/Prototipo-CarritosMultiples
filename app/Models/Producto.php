<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Model;

/**
 * Class Producto
 * 
 * @property int $id_producto
 * @property string $nombre
 * @property string|null $concentracion
 * @property string|null $adicional
 * @property float $precio_neto
 * @property float $precio
 * @property string|null $avatar
 * @property int $prod_lab
 * @property int $prod_tip_prod
 * @property int $prod_present
 * @property int $id_sucursal
 * @property string|null $bioequivalente
 * @property int|null $condicion_venta
 * 
 * @property Laboratorio $laboratorio
 * @property Presentacion $presentacion
 * @property TipoProducto $tipo_producto
 * @property Sucursal $sucursal
 * @property CondicionVentum|null $condicion_ventum
 * @property Collection|DetalleVentum[] $detalle_venta
 * @property Collection|Lote[] $lotes
 * @property Collection|VentaDetalle[] $venta_detalles
 * @property Collection|VentaProducto[] $venta_productos
 *
 * @package App\Models
 */
class Producto extends Model
{
	protected $table = 'producto';
	protected $primaryKey = 'id_producto';
	public $timestamps = false;

	protected $casts = [
		'precio_neto' => 'float',
		'precio' => 'float',
		'prod_lab' => 'int',
		'prod_tip_prod' => 'int',
		'prod_present' => 'int',
		'id_sucursal' => 'int',
		'condicion_venta' => 'int'
	];

	protected $fillable = [
		'nombre',
		'concentracion',
		'adicional',
		'precio_neto',
		'precio',
		'avatar',
		'prod_lab',
		'prod_tip_prod',
		'prod_present',
		'id_sucursal',
		'bioequivalente',
		'condicion_venta'
	];

	public function laboratorio()
	{
		return $this->belongsTo(Laboratorio::class, 'prod_lab');
	}

	public function presentacion()
	{
		return $this->belongsTo(Presentacion::class, 'prod_present');
	}

	public function tipo_producto()
	{
		return $this->belongsTo(TipoProducto::class, 'prod_tip_prod');
	}

	public function sucursal()
	{
		return $this->belongsTo(Sucursal::class, 'id_sucursal');
	}

	public function condicion_ventum()
	{
		return $this->belongsTo(CondicionVentum::class, 'condicion_venta');
	}

	public function detalle_venta()
	{
		return $this->hasMany(DetalleVentum::class, 'id__det_prod');
	}

	public function lotes()
	{
		return $this->hasMany(Lote::class, 'lote_id_prod');
	}

	public function venta_detalles()
	{
		return $this->hasMany(VentaDetalle::class, 'id_producto');
	}

	public function venta_productos()
	{
		return $this->hasMany(VentaProducto::class, 'producto_id_producto');
	}
}
