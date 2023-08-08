<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Model;

/**
 * Class Ventum
 * 
 * @property int $id_venta
 * @property Carbon|null $fecha
 * @property string|null $cliente
 * @property int|null $dni
 * @property float|null $total
 * @property bool $estado_activo
 * @property int $vendedor
 * @property int $id_sucursal
 * @property int|null $tipo_venta
 * @property int|null $confirmacion
 * @property string|null $folio
 * @property string|null $canal_venta
 * 
 * @property Usuario $usuario
 * @property Sucursal $sucursal
 * @property DocumentosTributario|null $documentos_tributario
 * @property TipoVentum|null $tipo_ventum
 * @property Collection|DetalleVentum[] $detalle_venta
 * @property Collection|Receta[] $recetas
 * @property Collection|VentaDetalle[] $venta_detalles
 * @property Collection|VentaProducto[] $venta_productos
 *
 * @package App\Models
 */
class Ventum extends Model
{
	protected $table = 'venta';
	protected $primaryKey = 'id_venta';
	public $timestamps = false;

	protected $casts = [
		'fecha' => 'datetime',
		'dni' => 'int',
		'total' => 'float',
		'estado_activo' => 'bool',
		'vendedor' => 'int',
		'id_sucursal' => 'int',
		'tipo_venta' => 'int',
		'confirmacion' => 'int'
	];

	protected $fillable = [
		'fecha',
		'cliente',
		'dni',
		'total',
		'estado_activo',
		'vendedor',
		'id_sucursal',
		'tipo_venta',
		'confirmacion',
		'folio',
		'canal_venta'
	];

	public function usuario()
	{
		return $this->belongsTo(Usuario::class, 'vendedor');
	}

	public function sucursal()
	{
		return $this->belongsTo(Sucursal::class, 'id_sucursal');
	}

	public function documentos_tributario()
	{
		return $this->belongsTo(DocumentosTributario::class, 'folio');
	}

	public function tipo_ventum()
	{
		return $this->belongsTo(TipoVentum::class, 'tipo_venta');
	}

	public function detalle_venta()
	{
		return $this->hasMany(DetalleVentum::class, 'id_det_venta');
	}

	public function recetas()
	{
		return $this->hasMany(Receta::class, 'id_venta');
	}

	public function venta_detalles()
	{
		return $this->hasMany(VentaDetalle::class, 'id_venta');
	}

	public function venta_productos()
	{
		return $this->hasMany(VentaProducto::class, 'venta_id_venta');
	}
}
