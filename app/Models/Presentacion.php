<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Model;

/**
 * Class Presentacion
 * 
 * @property int $id_presentacion
 * @property string $nombre
 * @property int $id_sucursal
 * 
 * @property Sucursal $sucursal
 * @property Collection|Producto[] $productos
 *
 * @package App\Models
 */
class Presentacion extends Model
{
	protected $table = 'presentacion';
	protected $primaryKey = 'id_presentacion';
	public $timestamps = false;

	protected $casts = [
		'id_sucursal' => 'int'
	];

	protected $fillable = [
		'nombre',
		'id_sucursal'
	];

	public function sucursal()
	{
		return $this->belongsTo(Sucursal::class, 'id_sucursal');
	}

	public function productos()
	{
		return $this->hasMany(Producto::class, 'prod_present');
	}
}
