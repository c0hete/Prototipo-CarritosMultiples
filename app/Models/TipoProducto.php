<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Model;

/**
 * Class TipoProducto
 * 
 * @property int $id_tip_prod
 * @property string $nombre
 * @property int $id_sucursal
 * 
 * @property Sucursal $sucursal
 * @property Collection|Producto[] $productos
 *
 * @package App\Models
 */
class TipoProducto extends Model
{
	protected $table = 'tipo_producto';
	protected $primaryKey = 'id_tip_prod';
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
		return $this->hasMany(Producto::class, 'prod_tip_prod');
	}
}
