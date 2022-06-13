select role_id as service_id,
	app_alias||' - '||smn_seguridad.s_role.description as item
where 
smn_seguridad.s_role.role_id=${fld:id}
group by smn_seguridad.s_service.service_id, smn_seguridad.s_service."path" ORDER BY smn_seguridad.s_service.service_id, smn_seguridad.s_service."path" asc 