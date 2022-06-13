select smn_seguridad.s_service.service_id as id, smn_seguridad.s_service.description as item from smn_seguridad.s_service 
left outer join smn_seguridad.s_service_role on smn_seguridad.s_service_role.service_id = smn_seguridad.s_service.service_id
where smn_seguridad.s_service_role.role_id=(${fld:id})
