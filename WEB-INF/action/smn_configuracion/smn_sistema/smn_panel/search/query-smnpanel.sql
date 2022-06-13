select
	smn_seguridad.s_application.app_alias,
	smn_seguridad.s_role.rolename,
	smn_base.smn_panel.smn_panel_id,
	smn_base.smn_panel.pan_service_description,
	smn_base.smn_panel.pan_service_path,
	smn_base.smn_panel.pan_icon_path,
	smn_base.smn_panel.pan_app_id,
	smn_base.smn_panel.pan_role_id,
	smn_base.smn_panel.pan_orden,
	smn_base.smn_panel.pan_fecha_registro
from 
	smn_seguridad.s_application,
	smn_seguridad.s_role, 
	smn_base.smn_panel
where
	smn_base.smn_panel.pan_app_id=smn_seguridad.s_application.app_id
and
	smn_base.smn_panel.pan_role_id=smn_seguridad.s_role.role_id
and
   	smn_base.smn_panel.pan_idioma = '${def:locale}'
order by
	smn_base.smn_panel.smn_panel_id desc
