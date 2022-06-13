INSERT INTO smn_base.smn_edificacion
(
	smn_edificacion_id,
	edf_codigo,
	edf_descripcion,
	edf_idioma,
	edf_usuario,
	edf_fecha_registro,
	edf_hora
)
VALUES
(
	${seq:currval@smn_base.seq_smn_edificacion},
	${fld:edf_codigo},
	${fld:edf_descripcion},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
