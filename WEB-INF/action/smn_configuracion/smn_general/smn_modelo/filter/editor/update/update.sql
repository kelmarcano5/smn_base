UPDATE smn_base.smn_modelo SET
	mod_codigo=${fld:mod_codigo},
	mod_descripcion=${fld:mod_descripcion},
	mod_idioma='${def:locale}',
	mod_usuario='${def:user}',
	mod_fecha_registro={d '${def:date}'},
	mod_hora='${def:time}'

WHERE
	smn_modelo_id=${fld:id}

