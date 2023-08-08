<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Model;

/**
 * Class Controlador
 * 
 * @property int $id
 * @property string|null $archivo
 * 
 * @property Collection|RegistroExcepcione[] $registro_excepciones
 *
 * @package App\Models
 */
class Controlador extends Model
{
	protected $table = 'controlador';
	public $timestamps = false;

	protected $fillable = [
		'archivo'
	];

	public function registro_excepciones()
	{
		return $this->hasMany(RegistroExcepcione::class, 'controlador');
	}
}
