select
	smn_base.smn_perfil.smn_perfil_id,
	case
	when smn_base.smn_perfil.prf_tipo_acceso=1 then '${lbl:b_only_documents}'
	when smn_base.smn_perfil.prf_tipo_acceso=2 then '${lbl:b_register_documents}'
	when smn_base.smn_perfil.prf_tipo_acceso=3 then '${lbl:b_only_all_documents}'
	when smn_base.smn_perfil.prf_tipo_acceso=4 then '${lbl:b_register_anyone_documents}'
	end as prf_tipo_acceso,
	smn_base.smn_perfil.prf_codigo ||' - '||smn_base.smn_perfil.prf_descripcion as nombre_perfil,
	smn_base.smn_perfil.role_id,
	smn_base.smn_perfil.prf_fecha_registro,
	smn_seguridad.s_role.rolename ||' - '||smn_seguridad.s_role.description as rol
from
	smn_base.smn_perfil
	LEFT OUTER JOIN smn_seguridad.s_role on smn_seguridad.s_role.role_id = smn_base.smn_perfil.role_id
where
 	smn_base.smn_perfil.smn_perfil_id is not null
	${filter}

order by
		smn_perfil_id
