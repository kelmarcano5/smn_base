UPDATE smn_base.smn_tipo_variable SET
	tva_codigo=${fld:tva_codigo},
	tva_descripcion=${fld:tva_descripcion},
	tva_idioma='${def:locale}',
	tva_usuario='${def:user}',
	tva_fecha_registro={d '${def:date}'},
	tva_hora='${def:time}'

WHERE
	smn_tipo_variable_id=${fld:id}

