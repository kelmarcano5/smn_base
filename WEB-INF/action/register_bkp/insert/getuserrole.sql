select 
	role_id 
from 
	${schema}s_role 
where 
	rolename = 'registrador' and 
	app_id in 
	(
	select
		app_id
	from
		${schema}s_application
	where
		app_alias = '${def:alias}'
	)