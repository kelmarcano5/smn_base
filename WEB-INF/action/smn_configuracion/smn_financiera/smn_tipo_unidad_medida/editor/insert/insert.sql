INSERT INTO smn_base.smn_tipo_unidad_medida
(
	smn_tipo_unidad_medida_id,
	tum_codigo,
	tum_descripcion,
	tum_idioma,
	tum_usuario,
	tum_fecha_registro,
	tum_hora
)
VALUES
(
	${seq:currval@smn_base.seq_smn_tipo_unidad_medida},
	${fld:tum_codigo},
	${fld:tum_descripcion},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
