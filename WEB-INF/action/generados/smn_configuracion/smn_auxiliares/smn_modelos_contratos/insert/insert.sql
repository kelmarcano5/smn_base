INSERT INTO smn_base.smn_modelos_contratos
(
	smn_modelos_contratos_id,
	mct_modulo,
	mct_descripcion,
	mct_archivo,
	mct_datos,
	mct_tamano,
	mct_contenido,
	mct_idioma,
	mct_usuario,
	mct_fecha_registro,
	mct_hora
)
VALUES
(
	${seq:nextval@smn_base.seq_smn_modelos_contratos},
	${fld:mct_modulo},
	${fld:mct_descripcion},
	${fld:_filename},
	?,
	${fld:_filesize},
	${fld:_contenttype},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
