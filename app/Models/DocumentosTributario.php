<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Model;

/**
 * Class DocumentosTributario
 * 
 * @property string $FOLIO
 * @property int $rut_emisor
 * @property int $id_sucursal_emisor
 * @property int $rut_receptor
 * @property string $giro_receptor
 * @property string $razon_receptor
 * @property string $direccion_receptor
 * @property string $comuna_receptor
 * @property string $tipo_documento
 * @property Carbon $fecha
 * 
 * @property Comuna $comuna
 * @property Sucursal $sucursal
 * @property Farmacia
 * @property TipoDocSii $tipo_doc_sii
 * @property Collection|Ventum[] $venta
 *
 * @package App\Models
 */
class DocumentosTributario extends Model
{
	protected $table = 'documentos_tributarios';
	protected $primaryKey = 'FOLIO';
	public $incrementing = false;
	public $timestamps = false;

	protected $casts = [
		'rut_emisor' => 'int',
		'id_sucursal_emisor' => 'int',
		'rut_receptor' => 'int',
		'fecha' => 'datetime'
	];

	protected $fillable = [
		'rut_emisor',
		'id_sucursal_emisor',
		'rut_receptor',
		'giro_receptor',
		'razon_receptor',
		'direccion_receptor',
		'comuna_receptor',
		'tipo_documento',
		'fecha'
	];

	public function comuna()
	{
		return $this->belongsTo(Comuna::class, 'comuna_receptor');
	}

	public function sucursal()
	{
		return $this->belongsTo(Sucursal::class, 'id_sucursal_emisor');
	}

	public function farmacia()
	{
		return $this->belongsTo(Farmacia::class, 'rut_emisor');
	}

	public function tipo_doc_sii()
	{
		return $this->belongsTo(TipoDocSii::class, 'tipo_documento');
	}

	public function venta()
	{
		return $this->hasMany(Ventum::class, 'folio');
	}
}
