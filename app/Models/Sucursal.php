<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Model;

/**
 * Class Sucursal
 * 
 * @property int $id_sucursal
 * @property int $rut_farmacia
 * @property string $nombre_sucursal
 * @property string $direccion_sucursal
 * @property string $id_comuna
 * @property string $codigo_sii
 * 
 * @property Farmacia 
 * @property Comuna $comuna
 * @property Collection|Contacto[] $contactos
 * @property Collection|DocumentosTributario[] $documentos_tributarios
 * @property Collection|Lote[] $lotes
 * @property Collection|Presentacion[] $presentacions
 * @property Collection|Producto[] $productos
 * @property Collection|RegistroExcepcione[] $registro_excepciones
 * @property Collection|Usuario[] $usuarios
 * @property Collection|TipoProducto[] $tipo_productos
 * @property Collection|Ventum[] $venta
 *
 * @package App\Models
 */
class Sucursal extends Model
{
	protected $table = 'sucursal';
	protected $primaryKey = 'id_sucursal';
	public $timestamps = false;

	protected $casts = [
		'rut_farmacia' => 'int'
	];

	protected $fillable = [
		'rut_farmacia',
		'nombre_sucursal',
		'direccion_sucursal',
		'id_comuna',
		'codigo_sii'
	];

	public function farmacia()
	{
		return $this->belongsTo(Farmacia::class, 'rut_farmacia');
	}

	public function comuna()
	{
		return $this->belongsTo(Comuna::class, 'id_comuna');
	}

	public function contactos()
	{
		return $this->hasMany(Contacto::class, 'id_sucursal');
	}

	public function documentos_tributarios()
	{
		return $this->hasMany(DocumentosTributario::class, 'id_sucursal_emisor');
	}

	public function lotes()
	{
		return $this->hasMany(Lote::class, 'id_sucursal');
	}

	public function presentacions()
	{
		return $this->hasMany(Presentacion::class, 'id_sucursal');
	}

	public function productos()
	{
		return $this->hasMany(Producto::class, 'id_sucursal');
	}

	public function registro_excepciones()
	{
		return $this->hasMany(RegistroExcepcione::class, 'id_sucursal');
	}

	public function usuarios()
	{
		return $this->belongsToMany(Usuario::class, 'sucursal_usuario', 'id_sucursal', 'id_usuario')
					->withPivot('id_sucursal_usuario', 'estado_activo');
	}

	public function tipo_productos()
	{
		return $this->hasMany(TipoProducto::class, 'id_sucursal');
	}

	public function venta()
	{
		return $this->hasMany(Ventum::class, 'id_sucursal');
	}
}
