select smn_seguridad.s_role.role_id as id, smn_seguridad.s_role.description as item from smn_seguridad.s_role
left outer join smn_seguridad.s_application on smn_seguridad.s_application.app_id = smn_seguridad.s_role.app_id
where smn_seguridad.s_application.app_id=(${fld:id})
