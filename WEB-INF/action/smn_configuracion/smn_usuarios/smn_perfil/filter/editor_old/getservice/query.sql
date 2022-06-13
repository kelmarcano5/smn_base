select smn_seguridad.s_service.service_id as service_id, smn_seguridad.s_service.description as item from smn_seguridad.s_service
left outer join smn_seguridad.s_application on smn_seguridad.s_application.app_id = smn_seguridad.s_service.app_id
left outer join smn_seguridad.s_role on smn_seguridad.s_role.app_id = smn_seguridad.s_application.app_id
left outer join smn_seguridad.s_service_role on smn_seguridad.s_service_role.service_id = smn_seguridad.s_role.role_id
where 
smn_seguridad.s_role.role_id=${fld:id}
group by smn_seguridad.s_service.service_id, smn_seguridad.s_service."path" ORDER BY smn_seguridad.s_service.service_id, smn_seguridad.s_service."path" asc 