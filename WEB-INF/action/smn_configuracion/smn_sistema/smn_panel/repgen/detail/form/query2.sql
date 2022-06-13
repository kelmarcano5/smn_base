select
	(select
		smn_seguridad.s_application.app_alias
	 from 
	 	smn_seguridad.s_application
	 where 
	 	smn_seguridad.s_application.app_id = ${fld:pan_app_id_filter}) as app_filter,
	(select
		smn_seguridad.s_role.rolename
	 from 
	 	smn_seguridad.s_role
	 where 
	 	smn_seguridad.s_role.role_id = ${fld:pan_role_id_filter}) as role_filter,
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
