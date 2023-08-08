<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Model;

/**
 * Class Proveedor
 * 
 * @property int $id_proveedor
 * @property string $nombre
 * @property int $telefono
 * @property string|null $correo
 * @property string $direccion
 * @property string|null $avatar
 * 
 * @property Collection|DetalleVentum[] $detalle_venta
 * @property Collection|Lote[] $lotes
 *
 * @package App\Models
 */
class Proveedor extends Model
{
	protected $table = 'proveedor';
	protected $primaryKey = 'id_proveedor';
	public $timestamps = false;

	protected $casts = [
		'telefono' => 'int'
	];

	protected $fillable = [
		'nombre',
		'telefono',
		'correo',
		'direccion',
		'avatar'
	];

	public function detalle_venta()
	{
		return $this->hasMany(DetalleVentum::class, 'lote_id_prov');
	}

	public function lotes()
	{
		return $this->hasMany(Lote::class, 'lote_id_prov');
	}
}
