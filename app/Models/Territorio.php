<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * Class Territorio
 * 
 * @property int $PaisID
 * @property string|null $Pais
 * @property string $RegionID
 * @property string|null $Region
 * @property string $ProvinciaID
 * @property string|null $Provincia
 * @property string $CityID
 * @property string|null $City
 *
 * @package App\Models
 */
class Territorio extends Model
{
	protected $table = 'territorio';
	public $incrementing = false;
	public $timestamps = false;

	protected $casts = [
		'PaisID' => 'int'
	];

	protected $fillable = [
		'PaisID',
		'Pais',
		'RegionID',
		'Region',
		'ProvinciaID',
		'Provincia',
		'CityID',
		'City'
	];
}
