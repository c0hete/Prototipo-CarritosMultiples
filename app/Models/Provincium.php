<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Model;

/**
 * Class Provincium
 * 
 * @property string $Codigo
 * @property string $Nombre
 * @property string $Activo
 * @property string $RegionID
 * 
 * @property Region $region
 * @property Collection|Comuna[] $comunas
 *
 * @package App\Models
 */
class Provincium extends Model
{
	protected $table = 'provincia';
	protected $primaryKey = 'Codigo';
	public $incrementing = false;
	public $timestamps = false;

	protected $fillable = [
		'Nombre',
		'Activo',
		'RegionID'
	];

	public function region()
	{
		return $this->belongsTo(Region::class, 'RegionID');
	}

	public function comunas()
	{
		return $this->hasMany(Comuna::class, 'ProvinciaID');
	}
}
