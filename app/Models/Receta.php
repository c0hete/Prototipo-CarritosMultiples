<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * Class Receta
 * 
 * @property int $id
 * @property int $id_venta
 * @property string|null $url_img
 * @property int|null $id_tecnico_validador
 * @property int|null $validacion
 * 
 * @property Ventum $ventum
 * @property Usuario|null $usuario
 *
 * @package App\Models
 */
class Receta extends Model
{
	protected $table = 'recetas';
	public $timestamps = false;

	protected $casts = [
		'id_venta' => 'int',
		'id_tecnico_validador' => 'int',
		'validacion' => 'int'
	];

	protected $fillable = [
		'id_venta',
		'url_img',
		'id_tecnico_validador',
		'validacion'
	];

	public function ventum()
	{
		return $this->belongsTo(Ventum::class, 'id_venta');
	}

	public function usuario()
	{
		return $this->belongsTo(Usuario::class, 'id_tecnico_validador');
	}
}
