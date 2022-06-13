select
	role_id as service_id,
	app_alias||' - '||smn_seguridad.s_role.description as item
	
from smn_seguridad.s_role, smn_seguridad.s_application
where smn_seguridad.s_role.app_id = smn_seguridad.s_application.app_id
order by smn_seguridad.s_application.description, rolename
