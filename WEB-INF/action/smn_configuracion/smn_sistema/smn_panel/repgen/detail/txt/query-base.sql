select
app_alias,
	rolename,
	${field}
from
	smn_seguridad.s_application,
	smn_seguridad.s_role,
	smn_base.smn_panel
where
	smn_seguridad.s_application.s_application_id = smn_base.smn_panel.pan_app_id and
	smn_seguridad.s_role.s_role_id = smn_base.smn_panel.pan_role_id and
		smn_base.smn_panel.smn_panel_id = ${fld:id}
	
