select
	${schema}s_menu.menu_id as id,
	${schema}s_menu.title as item
from
	${schema}s_menu
where
	${schema}s_menu.app_id in (select 
					           		${schema}s_application.app_id 
					           from 
					           		${schema}s_application 
					           where 
					           		${schema}s_application.app_alias = ${fld:id})
order by 
	${schema}s_menu.title
	
	
