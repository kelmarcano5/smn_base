UPDATE smn_base.smn_tipo_via SET
	tiv_codigo=${fld:tiv_codigo},
	tiv_descripcion=${fld:tiv_descripcion},
	tiv_idioma='${def:locale}',
	tiv_usuario='${def:user}',
	tiv_fecha_registro={d '${def:date}'},
	tiv_hora='${def:time}'

WHERE
	smn_tipo_via_id=${fld:id}

