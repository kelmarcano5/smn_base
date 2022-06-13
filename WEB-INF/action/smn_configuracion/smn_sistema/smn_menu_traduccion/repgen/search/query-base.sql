select
	smn_base.smn_menu_traduccion.smn_menu_traduccion_id,
	${field}
from
	smn_seguridad.s_application,
	smn_seguridad.s_menu,
	smn_base.smn_menu_traduccion
where
	smn_seguridad.s_application.app_id = smn_base.smn_menu_traduccion.mnt_app_id 
and
	smn_seguridad.s_menu.menu_id = smn_base.smn_menu_traduccion.mnt_menu_id
and
   	smn_base.smn_menu_traduccion.mnt_idioma = '${def:locale}'
and
	smn_base.smn_menu_traduccion.mnt_usuario = '${def:user}'
	${filter}
order by 
	smn_base.smn_menu_traduccion.smn_menu_traduccion_id desc
	
