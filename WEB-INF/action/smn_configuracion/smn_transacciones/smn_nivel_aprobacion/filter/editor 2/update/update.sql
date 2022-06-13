UPDATE smn_base.smn_nivel_aprobacion SET
	smn_configuracion_estructura_id=${fld:smn_configuracion_estructura_id},
	nap_codigo=${fld:nap_codigo},
	nap_descripcion=${fld:nap_descripcion},
	nap_rol=${fld:nap_rol},
	nap_secuencia_aprobacion=${fld:nap_secuencia_aprobacion},
	nap_idioma='${def:locale}',
	nap_usuario='${def:user}',
	nap_fecha_registro={d '${def:date}'},
	nap_hora='${def:time}'

WHERE
	smn_nivel_aprobacion_id=${fld:id}

