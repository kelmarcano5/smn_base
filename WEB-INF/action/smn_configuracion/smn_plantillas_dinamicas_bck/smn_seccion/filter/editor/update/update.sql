UPDATE smn_base.smn_seccion SET
	sec_codigo=${fld:sec_codigo},
	sec_descripcion=${fld:sec_descripcion},
	sec_estatus=${fld:sec_estatus},
	sec_idioma='${def:locale}',
	sec_usuario='${def:user}',
	sec_fecha_registro={d '${def:date}'},
	sec_hora='${def:time}'

WHERE
	smn_seccion_id=${fld:id}

