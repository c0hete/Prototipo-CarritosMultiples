<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Model;

/**
 * Class Usuario
 * 
 * @property int $id_usuario
 * @property string $nombre_us
 * @property string $apellidos_us
 * @property Carbon $edad
 * @property string $dni_us
 * @property string $contrasena_us
 * @property int|null $telefono_us
 * @property string|null $direccion_us
 * @property string|null $correo_us
 * @property string|null $sexo_us
 * @property string|null $adicional_us
 * @property string $avatar
 * @property int $us_tipo
 * @property bool $estado_activo
 * 
 * @property TipoU $tipo_u
 * @property Collection|Receta[] $recetas
 * @property Collection|Sucursal[] $sucursals
 * @property Collection|Ventum[] $venta
 *
 * @package App\Models
 */
class Usuario extends Model
{
	protected $table = 'usuario';
	protected $primaryKey = 'id_usuario';
	public $timestamps = false;

	protected $casts = [
		'edad' => 'datetime',
		'telefono_us' => 'int',
		'us_tipo' => 'int',
		'estado_activo' => 'bool'
	];

	protected $fillable = [
		'nombre_us',
		'apellidos_us',
		'edad',
		'dni_us',
		'contrasena_us',
		'telefono_us',
		'direccion_us',
		'correo_us',
		'sexo_us',
		'adicional_us',
		'avatar',
		'us_tipo',
		'estado_activo'
	];

	public function tipo_u()
	{
		return $this->belongsTo(TipoU::class, 'us_tipo');
	}

	public function recetas()
	{
		return $this->hasMany(Receta::class, 'id_tecnico_validador');
	}

	public function sucursals()
	{
		return $this->belongsToMany(Sucursal::class, 'sucursal_usuario', 'id_usuario', 'id_sucursal')
					->withPivot('id_sucursal_usuario', 'estado_activo');
	}

	public function venta()
	{
		return $this->hasMany(Ventum::class, 'vendedor');
	}
}
