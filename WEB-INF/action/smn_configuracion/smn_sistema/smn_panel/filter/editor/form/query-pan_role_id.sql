select 
	${schema}s_role.role_id as id, 
	${schema}s_role.rolename as item 
from 
	${schema}s_role 
where 
	${schema}s_role.app_id = (select 
									${schema}s_application.app_id 
							  from 
							  		${schema}s_application 
							  where 
							  		${schema}s_application.app_alias = 'smn_control_acceso') 
order by 2