UPDATE smn_base.smn_prestadores_servicios SET
	prs_codigo=${fld:prs_codigo},
	prs_nombres=${fld:prs_nombres},
	prs_apellidos=${fld:prs_apellidos},
	prs_area_servicio=${fld:prs_area_servicio},
	prs_unidad_servicio=${fld:prs_unidad_servicio},
	prs_clase_auxiliar=${fld:prs_clase_auxiliar},
	prs_auxiliar=${fld:prs_auxiliar},
	smn_grupos_prestadores=${fld:smn_grupos_prestadores},
	prs_direccion=${fld:prs_direccion},
	prs_telefono_fijo=${fld:prs_telefono_fijo},
	prs_telefono_movil=${fld:prs_telefono_movil},
	prs_frecuencia=${fld:prs_frecuencia},
	prs_idioma='${def:locale}',
	prs_usuario='${def:user}',
	prs_fecha_registro={d '${def:date}'},
	prs_hora='${def:time}'

WHERE
	smn_prestadores_servicios_id=${fld:id}

