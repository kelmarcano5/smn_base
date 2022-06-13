select
	smn_base.smn_panel.smn_panel_id,
	${field}
from
	smn_seguridad.s_application,
	smn_seguridad.s_role,
	smn_base.smn_panel
where
	smn_base.smn_panel.smn_panel_id is not null
and
	smn_seguridad.s_application.app_id = smn_base.smn_panel.pan_app_id 
and
	smn_seguridad.s_role.role_id = smn_base.smn_panel.pan_role_id 
and
   	smn_base.smn_panel.pan_idioma = '${def:locale}'
and
	smn_base.smn_panel.pan_usuario = '${def:user}'
	${filter}
order by 
	smn_base.smn_panel.smn_panel_id desc
	
	
