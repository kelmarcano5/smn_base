UPDATE smn_base.smn_rel_servicio_area_unidad SET
	smn_servicios_id=${fld:smn_servicios_id},
	smn_areas_servicios_rf=${fld:smn_areas_servicios_rf},
	smn_unidades_servicios_rf=${fld:smn_unidades_servicios_rf},
	smn_centro_costo_rf=${fld:smn_centro_costo_rf},
	rsa_idioma='${def:locale}',
	rsa_usuario='${def:user}',
	rsa_fecha_registro={d '${def:date}'},
	rsa_hora='${def:time}'

WHERE
	smn_rel_servicio_area_unidad_id=${fld:id}

