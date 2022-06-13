UPDATE smn_base.smn_panel SET
	pan_service_description=${fld:pan_service_description},
	pan_service_path=${fld:pan_service_path},
	pan_icon_path=${fld:pan_icon_path},
	pan_app_id=${fld:pan_app_id},
	pan_role_id=${fld:pan_role_id},
	pan_orden=${fld:pan_orden},
	pan_idioma='${def:locale}'
WHERE
	smn_base.smn_panel.smn_panel_id=${fld:id}

