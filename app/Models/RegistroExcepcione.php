<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

/**
 * Class RegistroExcepcione
 * 
 * @property int $id
 * @property int|null $rut_farmacia
 * @property int|null $id_sucursal
 * @property string|null $vista
 * @property int|null $controlador
 * @property string|null $detalle
 * @property Carbon $fecha
 * 
 * @property Farmacia|null 
 * @property Sucursal|null $sucursal
 *
 * @package App\Models
 */
class RegistroExcepcione extends Model
{
	protected $table = 'registro_excepciones';
	public $timestamps = false;

	protected $casts = [
		'rut_farmacia' => 'int',
		'id_sucursal' => 'int',
		'controlador' => 'int',
		'fecha' => 'datetime'
	];

	protected $fillable = [
		'rut_farmacia',
		'id_sucursal',
		'vista',
		'controlador',
		'detalle',
		'fecha'
	];

	public function farmacia()
	{
		return $this->belongsTo(Farmacia::class, 'rut_farmacia');
	}

	public function sucursal()
	{
		return $this->belongsTo(Sucursal::class, 'id_sucursal');
	}

	public function vista()
	{
		return $this->belongsTo(Vista::class, 'vista');
	}

	public function controlador()
	{
		return $this->belongsTo(Controlador::class, 'controlador');
	}
}
