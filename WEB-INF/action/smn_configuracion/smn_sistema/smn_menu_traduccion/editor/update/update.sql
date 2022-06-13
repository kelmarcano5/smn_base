UPDATE smn_base.smn_menu_traduccion SET
	mnt_app_id=${fld:mnt_app_id},
	mnt_menu_id=${fld:mnt_menu_id},
	mnt_title=${fld:mnt_title},
	mnt_locale=${fld:mnt_locale},
	mnt_idioma='${def:locale}',
	mnt_usuario='${def:user}',
	mnt_tipo=${fld:mnt_tipo}
WHERE
	smn_base.smn_menu_traduccion.smn_menu_traduccion_id=${fld:id}

