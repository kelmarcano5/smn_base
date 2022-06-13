INSERT INTO smn_base.smn_tipo_localidad
(
	smn_tipo_localidad_id,
	til_codigo,
	til_descripcion,
	til_idioma,
	til_usuario,
	til_fecha_registro,
	til_hora
)
VALUES
(
	${seq:nextval@smn_base.seq_smn_tipo_localidad},
	?,
	?,
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
