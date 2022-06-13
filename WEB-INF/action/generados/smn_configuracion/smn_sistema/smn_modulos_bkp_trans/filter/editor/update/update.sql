UPDATE smn_base.smn_modulos SET
	smn_transaccion_general_id=${fld:smn_transaccion_general_id},
	smn_entidades_id=${fld:smn_entidades_id},
	smn_app_id=${fld:smn_app_id},
	mod_codigo=${fld:mod_codigo},
	mod_nombre=${fld:mod_nombre},
	mod_idioma='${def:locale}',
	mod_usuario='${def:user}',
	mod_fecha_registro={d '${def:date}'},
	mod_hora='${def:time}'

WHERE
	smn_modulos_id=${fld:id}

