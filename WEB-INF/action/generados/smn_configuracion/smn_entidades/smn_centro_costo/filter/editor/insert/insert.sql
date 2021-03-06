INSERT INTO smn_base.smn_centro_costo
(
	smn_centro_costo_id,
	cco_codigo,
	cco_descripcion_corta,
	cco_descripcion_larga,
	cco_empresa,
	cco_sucursal,
	cco_area_servicio,
	cco_unidad_servicio,
	cco_almacen,
	cco_nivel,
	cco_idioma,
	cco_usuario,
	cco_fecha_registro,
	cco_hora
)
VALUES
(
	${seq:currval@smn_base.seq_smn_centro_costo},
	${fld:cco_codigo},
	${fld:cco_descripcion_corta},
	${fld:cco_descripcion_larga},
	${fld:cco_empresa},
	${fld:cco_sucursal},
	${fld:cco_area_servicio},
	${fld:cco_unidad_servicio},
	${fld:cco_almacen},
	${fld:cco_nivel},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
