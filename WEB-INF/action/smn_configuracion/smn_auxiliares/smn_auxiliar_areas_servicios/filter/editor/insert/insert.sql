INSERT INTO smn_base.smn_auxiliar_areas_servicios
(
	smn_auxiliar_areas_servicios_id,
	smn_auxiliar_tipos_servicios_id,
	tse_codigo,
	tse_descripcion,
	tse_auxiliar,
	tse_auxiliar_sucursal,
	tse_auxiliar_unidad_negocio,
	tse_idioma,
	tse_usuario,
	tse_fecha_registro,
	tse_hora
)
VALUES
(
	${seq:currval@smn_base.seq_smn_auxiliar_areas_servicios},
	${fld:smn_auxiliar_tipos_servicios_id},
	${fld:tse_codigo},
	${fld:tse_descripcion},
	${fld:tse_auxiliar},
	${fld:tse_auxiliar_sucursal},
	${fld:tse_auxiliar_unidad_negocio},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
