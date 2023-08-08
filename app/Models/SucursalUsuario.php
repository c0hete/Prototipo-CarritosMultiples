<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * Class SucursalUsuario
 * 
 * @property int $id_sucursal_usuario
 * @property int $id_sucursal
 * @property int $id_usuario
 * @property bool $estado_activo
 * 
 * @property Usuario $usuario
 * @property Sucursal $sucursal
 *
 * @package App\Models
 */
class SucursalUsuario extends Model
{
	protected $table = 'sucursal_usuario';
	protected $primaryKey = 'id_sucursal_usuario';
	public $timestamps = false;

	protected $casts = [
		'id_sucursal' => 'int',
		'id_usuario' => 'int',
		'estado_activo' => 'bool'
	];

	protected $fillable = [
		'id_sucursal',
		'id_usuario',
		'estado_activo'
	];

	public function usuario()
	{
		return $this->belongsTo(Usuario::class, 'id_usuario');
	}

	public function sucursal()
	{
		return $this->belongsTo(Sucursal::class, 'id_sucursal');
	}
}
