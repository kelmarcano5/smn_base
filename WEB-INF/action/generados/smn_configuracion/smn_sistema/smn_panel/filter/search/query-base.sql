select	
	smn_base.smn_panel.pan_service_description,
	smn_base.smn_panel.pan_service_path,
	smn_base.smn_panel.pan_icon_path,
	smn_base.smn_panel.pan_app_id,
	smn_base.smn_panel.pan_role_id,
	smn_base.smn_panel.pan_orden,
	smn_base.smn_panel.pan_fecha_registro,
	smn_base.smn_panel.smn_panel_id

from
	smn_base.smn_panel
where
	smn_panel_id is not null	
 	 	${filter}
order by 
	smn_panel_id