INSERT INTO smn_base.smn_sub_tipo_gasto
(
	smn_sub_tipo_gasto_id,
	stg_codigo,
	stg_descripcion,
	smn_tipo_gasto_id,
	stg_idioma,
	stg_usuario,
	stg_fecha_registro,
	stg_hora
)
VALUES
(
	${seq:currval@smn_base.seq_smn_sub_tipo_gasto},
	${fld:stg_codigo},
	${fld:stg_descripcion},
	${fld:smn_tipo_gasto_id},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
