UPDATE smn_base.smn_variable SET
	smn_tipo_variable_id=${fld:smn_tipo_variable_id},
	var_codigo=${fld:var_codigo},
	var_descripcion=${fld:var_descripcion},
	var_tipo_valor=${fld:var_tipo_valor},
	var_color_letra=${fld:var_color_letra},
	var_tipo_letra=${fld:var_tipo_letra},
	var_tamano_letra=${fld:var_tamano_letra},
	var_color_sombreado=${fld:var_color_sombreado},
	var_idioma='${def:locale}',
	var_usuario='${def:user}',
	var_fecha_registro={d '${def:date}'},
	var_hora='${def:time}'

WHERE
	smn_variable_id=${fld:id}

