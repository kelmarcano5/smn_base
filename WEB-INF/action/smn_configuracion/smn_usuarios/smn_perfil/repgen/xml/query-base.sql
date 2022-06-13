select
	smn_seguridad.s_role.description,
	description,
	${field}
from
	smn_base.smn_perfil
	left outer join smn_seguridad.s_role on smn_seguridad.s_role.s_role_id = smn_base.smn_perfil.role_id
	inner join smn_seguridad.s_service on smn_seguridad.s_service.s_service_id = smn_base.smn_perfil.service_id
where
		smn_base.smn_perfil.smn_perfil_id is not null
