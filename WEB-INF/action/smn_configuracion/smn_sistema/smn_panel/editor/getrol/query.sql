select 
	${schema}s_role.role_id as id, 
	${schema}s_role.rolename as item 
from 
	${schema}s_role 
where 
	${schema}s_role.app_id = ${fld:id}
order by 2