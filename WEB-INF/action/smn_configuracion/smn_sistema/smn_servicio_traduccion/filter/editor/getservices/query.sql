select
	${schema}s_service.service_id as id,
	${schema}s_service.description as item 
from
	${schema}s_service,
	${schema}s_menu,
	${schema}s_menu_item
where
	${schema}s_menu.menu_id  in ( select 
	           							${schema}s_menu.menu_id 
						           from 
						           		${schema}s_menu
						           where 
						           		${schema}s_menu.title = ${fld:id} )
and
	${schema}s_service.app_id in ( select 
	           							${schema}s_application.app_id 
						           from 
						           		${schema}s_application 
						           where 
						           		${schema}s_application.app_alias = ${fld:id2} )
and
	${schema}s_menu.menu_id=${schema}s_menu_item.menu_id
and
	${schema}s_service.service_id=${schema}s_menu_item.service_id
order by 
	${schema}s_service.description
	
	
