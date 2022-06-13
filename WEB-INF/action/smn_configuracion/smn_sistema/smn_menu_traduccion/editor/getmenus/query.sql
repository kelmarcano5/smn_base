select
	menu_id as id,
	title as item
from
	${schema}s_menu
where
	app_id in (select 
	           		app_id 
	           from 
	           		${schema}s_application 
	           where 
	           		app_alias = ${fld:id})
order by 
	title
	
	
