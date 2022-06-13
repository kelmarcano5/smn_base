UPDATE smn_base.smn_variable SET
	smn_tipo_variable_id=${fld:smn_tipo_variable_id},
	var_codigo=${fld:var_codigo},
	var_descripción=${fld:var_descripción},
	var_idioma='${def:locale}',
	var_usuario='${def:user}',
	var_fecha_registro={d '${def:date}'},
	var_hora='${def:time}'

WHERE
	smn_variable_id=${fld:id}

