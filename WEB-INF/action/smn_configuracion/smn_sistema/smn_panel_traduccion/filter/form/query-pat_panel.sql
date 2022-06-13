select 
	smn_seguridad.s_panel.panel_id as id, 
	smn_seguridad.s_service.description || ' - ' || smn_seguridad.s_service.path as item 
from 
	smn_seguridad.s_panel, 
	smn_seguridad.s_service 
where 
	smn_seguridad.s_panel.service_id = smn_seguridad.s_service.service_id 
and 
	smn_seguridad.s_panel.app_id in (select 
										${schema}s_application.app_id 
									 from 
									 	${schema}s_application 
									 where 
									 	${schema}s_application.app_alias in ('smn_base', 'smn_cont_financiera') 
									 order by 
									 	smn_seguridad.s_service.description)