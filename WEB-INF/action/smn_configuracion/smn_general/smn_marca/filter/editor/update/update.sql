UPDATE smn_base.smn_marca SET
	mar_codigo=${fld:mar_codigo},
	mar_descripcion=${fld:mar_descripcion},
	mar_idioma='${def:locale}',
	mar_usuario='${def:user}',
	mar_fecha_registro={d '${def:date}'},
	mar_hora='${def:time}'

WHERE
	smn_marca_id=${fld:id}

