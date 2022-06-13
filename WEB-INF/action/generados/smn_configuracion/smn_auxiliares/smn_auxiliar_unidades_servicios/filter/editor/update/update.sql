UPDATE smn_base.smn_auxiliar_unidades_servicios SET
	smn_auxiliar_areas_servicios_id=${fld:smn_auxiliar_areas_servicios_id},
	tns_codigo=${fld:tns_codigo},
	tns_descripcion=${fld:tns_descripcion},
	tns_idioma='${def:locale}',
	tns_usuario='${def:user}',
	tns_fecha_registro={d '${def:date}'},
	tns_hora='${def:time}'

WHERE
	smn_auxiliar_unidades_servicios_id=${fld:id}

