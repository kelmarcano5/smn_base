UPDATE smn_base.smn_auxiliar_areas_servicios SET
	smn_auxiliar_tipos_servicios_id=${fld:smn_auxiliar_tipos_servicios_id},
	tse_codigo=${fld:tse_codigo},
	tse_descripcion=${fld:tse_descripcion},
	tse_auxiliar=${fld:tse_auxiliar},
	tse_auxiliar_sucursal=${fld:tse_auxiliar_sucursal},
	tse_auxiliar_unidad_negocio=${fld:tse_auxiliar_unidad_negocio},
	tse_idioma='${def:locale}',
	tse_usuario='${def:user}',
	tse_fecha_registro={d '${def:date}'},
	tse_hora='${def:time}'

WHERE
	smn_auxiliar_areas_servicios_id=${fld:id}

