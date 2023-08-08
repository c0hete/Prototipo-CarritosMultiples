<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * Class Contacto
 * 
 * @property int $id_solicitud
 * @property int $rut_farmacia
 * @property int $id_sucursal
 * @property string $email
 * @property string $consulta
 * 
 * @property Farmacia 
 * @property Sucursal $sucursal
 *
 * @package App\Models
 */
class Contacto extends Model
{
	protected $table = 'contacto';
	protected $primaryKey = 'id_solicitud';
	public $timestamps = false;

	protected $casts = [
		'rut_farmacia' => 'int',
		'id_sucursal' => 'int'
	];

	protected $fillable = [
		'rut_farmacia',
		'id_sucursal',
		'email',
		'consulta'
	];

	public function farmacia()
	{
		return $this->belongsTo(Farmacia::class, 'rut_farmacia');
	}

	public function sucursal()
	{
		return $this->belongsTo(Sucursal::class, 'id_sucursal');
	}
}
