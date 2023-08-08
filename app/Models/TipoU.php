<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Model;

/**
 * Class TipoU
 * 
 * @property int $id_tipo_us
 * @property string $nombre_tipo
 * 
 * @property Collection|Usuario[] $usuarios
 *
 * @package App\Models
 */
class TipoU extends Model
{
	protected $table = 'tipo_us';
	protected $primaryKey = 'id_tipo_us';
	public $timestamps = false;

	protected $fillable = [
		'nombre_tipo'
	];

	public function usuarios()
	{
		return $this->hasMany(Usuario::class, 'us_tipo');
	}
}
