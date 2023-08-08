<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

/**
 * Class UsuarioEcommerce
 * 
 * @property int $id
 * @property string $dni
 * @property string $name
 * @property string|null $telefono
 * @property string $email
 * @property Carbon|null $email_verified_at
 * @property string $password
 * @property string $dir_cliente
 * @property string $dir_numero_cliente
 * @property string $region_cliente
 * @property string $provincia_cliente
 * @property string $comuna_cliente
 * @property Carbon|null $fecha_nacimiento
 * @property string|null $remember_token
 * @property Carbon|null $created_at
 * @property Carbon|null $updated_at
 *
 * @package App\Models
 */
class UsuarioEcommerce extends Model
{
	protected $table = 'usuario_ecommerce';

	protected $casts = [
		'email_verified_at' => 'datetime',
		'fecha_nacimiento' => 'datetime'
	];

	protected $hidden = [
		'password',
		'remember_token'
	];

	protected $fillable = [
		'dni',
		'name',
		'telefono',
		'email',
		'email_verified_at',
		'password',
		'dir_cliente',
		'dir_numero_cliente',
		'region_cliente',
		'provincia_cliente',
		'comuna_cliente',
		'fecha_nacimiento',
		'remember_token'
	];
}
