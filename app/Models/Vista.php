<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Model;

/**
 * Class Vista
 * 
 * @property string $codigo
 * @property string $titulo
 * @property string $archivo
 * 
 * @property Collection|RegistroExcepcione[] $registro_excepciones
 *
 * @package App\Models
 */
class Vista extends Model
{
	protected $table = 'vistas';
	protected $primaryKey = 'codigo';
	public $incrementing = false;
	public $timestamps = false;

	protected $fillable = [
		'titulo',
		'archivo'
	];

	public function registro_excepciones()
	{
		return $this->hasMany(RegistroExcepcione::class, 'vista');
	}
}
