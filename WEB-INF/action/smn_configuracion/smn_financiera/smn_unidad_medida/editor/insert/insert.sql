INSERT INTO smn_base.smn_unidad_medida
(
	smn_unidad_medida_id,
	unm_codigo,
	unm_descripcion,
	smn_tipo_unidad_medida_rf,
	unm_idioma,
	unm_usuario,
	unm_fecha_registro,
	unm_hora
)
VALUES
(
	${seq:currval@smn_base.seq_smn_unidad_medida},
	${fld:unm_codigo},
	${fld:unm_descripcion},
	${fld:smn_tipo_unidad_medida_rf},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
