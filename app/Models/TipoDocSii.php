<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Model;

/**
 * Class TipoDocSii
 * 
 * @property string $codigo
 * @property string $nombre
 * 
 * @property Collection|DocumentosTributario[] $documentos_tributarios
 *
 * @package App\Models
 */
class TipoDocSii extends Model
{
	protected $table = 'tipo_doc_sii';
	protected $primaryKey = 'codigo';
	public $incrementing = false;
	public $timestamps = false;

	protected $fillable = [
		'nombre'
	];

	public function documentos_tributarios()
	{
		return $this->hasMany(DocumentosTributario::class, 'tipo_documento');
	}
}
