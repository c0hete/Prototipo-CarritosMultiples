<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Model;

/**
 * Class Pai
 * 
 * @property int $Codigo
 * @property string $Nombre
 * @property string $Activo
 * 
 * @property Collection|Region[] $regions
 *
 * @package App\Models
 */
class Pai extends Model
{
	protected $table = 'pais';
	protected $primaryKey = 'Codigo';
	public $incrementing = false;
	public $timestamps = false;

	protected $casts = [
		'Codigo' => 'int'
	];

	protected $fillable = [
		'Nombre',
		'Activo'
	];

	public function regions()
	{
		return $this->hasMany(Region::class, 'PaisID');
	}
}
