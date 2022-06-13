UPDATE smn_base.smn_periodos SET
	prd_codigo=${fld:prd_codigo},
	prd_descripcion=${fld:prd_descripcion},
	prd_idioma='${def:locale}',
	prd_usuario='${def:user}',
	prd_fecha_registro={d '${def:date}'},
	prd_hora='${def:time}'

WHERE
	smn_periodos_id=${fld:id}

