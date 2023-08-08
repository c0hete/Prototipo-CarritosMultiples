<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Model;

/**
 * Class TipoVentum
 * 
 * @property int $codigo
 * @property string $nombre
 * 
 * @property Collection|Ventum[] $venta
 *
 * @package App\Models
 */
class TipoVentum extends Model
{
	protected $table = 'tipo_venta';
	protected $primaryKey = 'codigo';
	public $incrementing = false;
	public $timestamps = false;

	protected $casts = [
		'codigo' => 'int'
	];

	protected $fillable = [
		'nombre'
	];

	public function venta()
	{
		return $this->hasMany(Ventum::class, 'tipo_venta');
	}
}
