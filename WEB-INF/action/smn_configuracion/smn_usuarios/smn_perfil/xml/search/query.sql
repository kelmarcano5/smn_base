select
	smn_seguridad.s_role.description,
		smn_base.smn_perfil.smn_perfil_id,
	smn_seguridad.s_role.description as description1,
	smn_seguridad.s_role.rolename as rolename_pl0,
	smn_seguridad.s_service.service_id,
	smn_seguridad.s_service.path as path_pl1,
	case
	when smn_base.smn_perfil.prf_tipo_acceso=1 then '${lbl:b_only_documents}'
	when smn_base.smn_perfil.prf_tipo_acceso=2 then '${lbl:b_register_documents}'
	when smn_base.smn_perfil.prf_tipo_acceso=3 then '${lbl:b_only_all_documents}'
	when smn_base.smn_perfil.prf_tipo_acceso=4 then '${lbl:b_register_anyone_documents}'
	end as prf_tipo_acceso,
	case
	when smn_base.smn_perfil.prf_add='S' then '${lbl:b_yes}'
	when smn_base.smn_perfil.prf_add='N' then '${lbl:b_not}'
	end as prf_add,
	case
	when smn_base.smn_perfil.prf_del='S' then '${lbl:b_yes}'
	when smn_base.smn_perfil.prf_del='N' then '${lbl:b_not}'
	end as prf_del,
	case
	when smn_base.smn_perfil.prf_edit='S' then '${lbl:b_yes}'
	when smn_base.smn_perfil.prf_edit='N' then '${lbl:b_not}'
	end as prf_edit,
	case
	when smn_base.smn_perfil.prf_view='S' then '${lbl:b_yes}'
	when smn_base.smn_perfil.prf_view='N' then '${lbl:b_not}'
	end as prf_view,
	case
	when smn_base.smn_perfil.prf_export='S' then '${lbl:b_yes}'
	when smn_base.smn_perfil.prf_export='N' then '${lbl:b_not}'
	end as prf_export,
	case
	when smn_base.smn_perfil.prf_find='S' then '${lbl:b_yes}'
	when smn_base.smn_perfil.prf_find='N' then '${lbl:b_not}'
	end as prf_find,
	case
	when smn_base.smn_perfil.prf_import='S' then '${lbl:b_yes}'
	when smn_base.smn_perfil.prf_import='N' then '${lbl:b_not}'
	end as prf_import,
	smn_base.smn_perfil.role_id,
	smn_base.smn_perfil.prf_tipo_acceso,
	smn_base.smn_perfil.prf_add,
	smn_base.smn_perfil.prf_del,
	smn_base.smn_perfil.prf_edit,
	smn_base.smn_perfil.prf_view,
	smn_base.smn_perfil.prf_export,
	smn_base.smn_perfil.prf_find,
	smn_base.smn_perfil.prf_import,
	smn_base.smn_perfil.prf_fecha_registro
	
from
	smn_base.smn_perfil
	left outer join smn_seguridad.s_role on smn_seguridad.s_role.role_id = smn_base.smn_perfil.role_id
	inner join smn_base.smn_rel_perfil_servicios on smn_base.smn_rel_perfil_servicios.smn_perfil_id = smn_base.smn_perfil.smn_perfil_id
	inner join smn_seguridad.s_service on smn_seguridad.s_service.service_id = smn_base.smn_rel_perfil_servicios.service_id