UPDATE smn_base.smn_unidades_servicios SET
	smn_areas_servicios_id=${fld:smn_areas_servicios_id},
	uns_codigo=${fld:uns_codigo},
	uns_descripcion=${fld:uns_descripcion},
	uns_centro_costo=${fld:uns_centro_costo},
	uns_idioma='${def:locale}',
	uns_usuario='${def:user}',
	uns_fecha_registro={d '${def:date}'},
	uns_hora='${def:time}'

WHERE
	smn_unidades_servicios_id=${fld:id}

