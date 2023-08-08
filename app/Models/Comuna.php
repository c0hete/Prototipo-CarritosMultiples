<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Model;

/**
 * Class Comuna
 * 
 * @property string $Codigo
 * @property string $Nombre
 * @property string $Activo
 * @property string $ProvinciaID
 * 
 * @property Provincium $provincium
 * @property Collection|DocumentosTributario[] $documentos_tributarios
 * @property Collection|Sucursal[] $sucursals
 *
 * @package App\Models
 */
class Comuna extends Model
{
	protected $table = 'comuna';
	protected $primaryKey = 'Codigo';
	public $incrementing = false;
	public $timestamps = false;

	protected $fillable = [
		'Nombre',
		'Activo',
		'ProvinciaID'
	];

	public function provincium()
	{
		return $this->belongsTo(Provincium::class, 'ProvinciaID');
	}

	public function documentos_tributarios()
	{
		return $this->hasMany(DocumentosTributario::class, 'comuna_receptor');
	}

	public function sucursals()
	{
		return $this->hasMany(Sucursal::class, 'id_comuna');
	}
}
