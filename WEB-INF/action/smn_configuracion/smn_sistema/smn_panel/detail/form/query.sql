select
	smn_seguridad.s_application.app_alias,
	smn_seguridad.s_role.rolename,
	smn_base.smn_panel.*
from
	smn_seguridad.s_application,
	smn_seguridad.s_role, 
	smn_base.smn_panel
where
	smn_base.smn_panel.pan_app_id=smn_seguridad.s_application.app_id
and
	smn_base.smn_panel.pan_role_id=smn_seguridad.s_role.role_id
and
	smn_base.smn_panel.smn_panel_id = ${fld:id}
