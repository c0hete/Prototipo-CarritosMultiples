<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Model;

/**

 * 
 * @property int $rut_farmacia
 * @property string $nombre_farmacia
 * @property string $logo_farmacia
 * @property bool $estado_activo
 * @property string $giro
 * 
 * @property Collection|Contacto[] $contactos
 * @property Collection|DocumentosTributario[] $documentos_tributarios
 * @property Collection|RegistroExcepcione[] $registro_excepciones
 * @property Collection|Sucursal[] $sucursals
 *
 * @package App\Models
 */
class Farmacia extends Model
{
	protected $table = 'farmacia';
	protected $primaryKey = 'rut_farmacia';
	public $timestamps = false;

	protected $casts = [
		'estado_activo' => 'bool'
	];

	protected $fillable = [
		'nombre_farmacia',
		'logo_farmacia',
		'estado_activo',
		'giro'
	];

	public function contactos()
	{
		return $this->hasMany(Contacto::class, 'rut_farmacia');
	}

	public function documentos_tributarios()
	{
		return $this->hasMany(DocumentosTributario::class, 'rut_emisor');
	}

	public function registro_excepciones()
	{
		return $this->hasMany(RegistroExcepcione::class, 'rut_farmacia');
	}

	public function sucursals()
	{
		return $this->hasMany(Sucursal::class, 'rut_farmacia');
	}
}
