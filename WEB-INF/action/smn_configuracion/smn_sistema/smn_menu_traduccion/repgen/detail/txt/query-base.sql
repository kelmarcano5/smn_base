select
app_alias,
	title,
	${field}
from
	smn_seguridad.s_application,
	smn_seguridad.s_menu,
	smn_base.smn_menu_traduccion
where
	smn_seguridad.s_application.s_application_id = smn_base.smn_menu_traduccion.mnt_app_id and
	smn_seguridad.s_menu.s_menu_id = smn_base.smn_menu_traduccion.mnt_menu_id and
	
