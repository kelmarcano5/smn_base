INSERT INTO smn_base.smn_grupo_titulo_impresion
(
	smn_grupo_titulo_impresion_id,
	gti_codigo,
	gti_descripcion,
	gti_estatus,
	gti_fecha_vigencia,
	gti_idioma,
	gti_usuario,
	gti_fecha_registro,
	gti_hora,
	gti_orden
)
VALUES
(
	${seq:currval@smn_base.seq_smn_grupo_titulo_impresion},
	${fld:gti_codigo},
	${fld:gti_descripcion},
	${fld:gti_estatus},
	${fld:gti_fecha_vigencia},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}',
	${fld:gti_orden}
)
