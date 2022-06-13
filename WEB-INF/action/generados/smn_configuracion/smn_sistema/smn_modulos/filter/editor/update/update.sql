UPDATE smn_base.smn_modulos SET
	mod_empresa=${fld:mod_empresa},
	mod_codigo=${fld:mod_codigo},
	mod_nombre=${fld:mod_nombre},
	mod_idioma='${def:locale}',
	mod_usuario='${def:user}',
	mod_fecha_registro={d '${def:date}'},
	mod_hora='${def:time}'

WHERE
	smn_modulos_id=${fld:id}

