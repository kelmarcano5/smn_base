select 
	smn_seguridad.s_panel.panel_id as id, 
	smn_seguridad.s_service.description || ' - ' || smn_seguridad.s_service.path as item 
from smn_seguridad.s_panel
inner join smn_seguridad.s_service on smn_seguridad.s_service.service_id = smn_seguridad.s_panel.service_id
where
	smn_seguridad.s_panel.app_id=${fld:id} 