UPDATE smn_base.smn_grupo_prestador_servicio_frecuencia SET
	smn_grupos_prestadores_id=${fld:smn_grupos_prestadores_id},
	smn_prestadores_servicios_id=${fld:smn_prestadores_servicios_id},
	smn_servicios_id=${fld:smn_servicios_id},
	gps_frecuencia=${fld:gps_frecuencia},
	gps_idioma='${def:locale}',
	gps_usuario={d '${def:date}'},
	gps_fecha_registro={d '${def:date}'},
	gps_hora='${def:time}'

WHERE
	smn_grupo_prestador_servicio_frecuencia_id=${fld:id}

