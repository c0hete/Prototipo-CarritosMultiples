<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Model;

/**
 * Class CondicionVentum
 * 
 * @property int $id
 * @property string $nombre
 * 
 * @property Collection|Producto[] $productos
 *
 * @package App\Models
 */
class CondicionVentum extends Model
{
	protected $table = 'condicion_venta';
	public $timestamps = false;

	protected $fillable = [
		'nombre'
	];

	public function productos()
	{
		return $this->hasMany(Producto::class, 'condicion_venta');
	}
}
