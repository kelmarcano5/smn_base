UPDATE smn_base.smn_titulo SET
	tlo_codigo=${fld:tlo_codigo},
	tlo_descripcion=${fld:tlo_descripcion},
	tlo_idioma='${def:locale}',
	tlo_usuario='${def:user}',
	tlo_fecha_registro={d '${def:date}'},
	tlo_hora='${def:time}'

WHERE
	smn_titulo_id=${fld:id}

