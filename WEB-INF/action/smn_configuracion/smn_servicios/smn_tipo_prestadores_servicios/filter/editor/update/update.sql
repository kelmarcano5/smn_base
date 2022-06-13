UPDATE smn_base.smn_tipo_prestadores_servicios SET
	tps_codigo=${fld:tps_codigo},
	tps_descripcion=${fld:tps_descripcion},
	tps_idioma='${def:locale}',
	tps_usuario='${def:user}',
	tps_fecha_registro={d '${def:date}'},
	tps_hora='${def:time}'

WHERE
	smn_tipo_prestadores_servicios_id=${fld:id}

