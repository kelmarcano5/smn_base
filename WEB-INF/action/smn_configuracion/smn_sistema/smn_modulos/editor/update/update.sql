UPDATE smn_base.smn_modulos SET
	mod_empresa=${fld:mod_empresa},
	mod_codigo=${fld:mod_codigo},
	mod_nombre=${fld:mod_nombre},
	smn_app_rf=${fld:smn_app_rf},
	mod_ruta_anexado=${fld:mod_ruta_anexado},
	mod_idioma='${def:locale}',
	mod_usuario='${def:user}',
	mod_fecha_registro={d '${def:date}'},
	mod_hora='${def:time}'

WHERE
	smn_modulos_id=${fld:id}

