<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Model;

/**
 * Class Region
 * 
 * @property string $Codigo
 * @property string $Nombre
 * @property string $Activo
 * @property int $PaisID
 * 
 * @property Pai $pai
 * @property Collection|Provincium[] $provincia
 *
 * @package App\Models
 */
class Region extends Model
{
	protected $table = 'region';
	protected $primaryKey = 'Codigo';
	public $incrementing = false;
	public $timestamps = false;

	protected $casts = [
		'PaisID' => 'int'
	];

	protected $fillable = [
		'Nombre',
		'Activo',
		'PaisID'
	];

	public function pai()
	{
		return $this->belongsTo(Pai::class, 'PaisID');
	}

	public function provincia()
	{
		return $this->hasMany(Provincium::class, 'RegionID');
	}
}
