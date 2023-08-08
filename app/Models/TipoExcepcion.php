<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * Class TipoExcepcion
 * 
 * @property int $id
 * @property string|null $tipo
 *
 * @package App\Models
 */
class TipoExcepcion extends Model
{
	protected $table = 'tipo_excepcion';
	public $timestamps = false;

	protected $fillable = [
		'tipo'
	];
}
