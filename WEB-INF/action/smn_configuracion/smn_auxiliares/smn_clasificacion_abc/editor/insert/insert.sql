INSERT INTO smn_base.smn_clasificacion_abc
(
	smn_clasificacion_abc_id,
	clf_codigo,
	clf_descripcion,
	clf_ponderacion,
	clf_idioma,
	clf_usuario,
	clf_fecha_registro,
	clf_hora
)
VALUES
(
	${seq:currval@smn_base.seq_smn_clasificacion_abc},
	${fld:clf_codigo},
	${fld:clf_descripcion},
	${fld:clf_ponderacion},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
