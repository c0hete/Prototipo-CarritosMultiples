<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Model;

/**
 * Class Laboratorio
 * 
 * @property int $id_laboratorio
 * @property string $nombre
 * @property string|null $avatar
 * 
 * @property Collection|Producto[] $productos
 *
 * @package App\Models
 */
class Laboratorio extends Model
{
	protected $table = 'laboratorio';
	protected $primaryKey = 'id_laboratorio';
	public $timestamps = false;

	protected $fillable = [
		'nombre',
		'avatar'
	];

	public function productos()
	{
		return $this->hasMany(Producto::class, 'prod_lab');
	}
}
