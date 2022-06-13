UPDATE smn_base.smn_servicio_traduccion SET
	set_app_id=${fld:set_app_id},
	set_menu_id=${fld:set_menu_id},
	set_servicio_id=${fld:set_servicio_id},
	set_servicio=${fld:set_servicio},
	set_locale=${fld:set_locale},
	set_idioma='${def:locale}',
	set_usuario='${def:user}'
WHERE
	smn_base.smn_servicio_traduccion.smn_servicio_traduccion_id=${fld:id}

