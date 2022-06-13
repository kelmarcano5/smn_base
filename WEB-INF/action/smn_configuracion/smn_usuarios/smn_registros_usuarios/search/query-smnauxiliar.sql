select
	smn_base.smn_auxiliar.smn_auxiliar_id,
	smn_seguridad.s_user.userlogin,
	smn_base.smn_tipo_doc_oficial.tdo_descripcion,
	case
		when smn_base.smn_auxiliar.aux_tipo_persona='PJ' then '${lbl:b_legal_person_value}'
		when smn_base.smn_auxiliar.aux_tipo_persona='PN' then '${lbl:b_natural_person_value}'
		when smn_base.smn_auxiliar.aux_tipo_persona='GO' then '${lbl:b_government_person}'
	end as aux_tipo_persona,
	smn_base.smn_clase_auxiliar.cla_codigo ||' - '|| smn_base.smn_clase_auxiliar.cla_nombre as smn_clase_auxiliar_rf,
	smn_base.smn_auxiliar.smn_naturaleza_auxiliar_rf,
	smn_base.smn_auxiliar.aux_tipo_persona,
	smn_base.smn_auxiliar.aux_codigo,
	smn_base.smn_auxiliar.aux_descripcion,
	smn_base.smn_auxiliar.aux_apellidos,
	smn_base.smn_auxiliar.aux_nombres,
	smn_seguridad.s_user.lname,
	smn_seguridad.s_user.fname,
	case
		when smn_seguridad.s_user.enabled=0 then '${lbl:b_inactive}'
		when smn_seguridad.s_user.enabled=1 then '${lbl:b_active}'
	end as estatus,
	smn_base.smn_tipo_doc_oficial.tdo_codigo ||' - '|| smn_base.smn_tipo_doc_oficial.tdo_descripcion as aux_tipo_doc_oficial_rf,
	smn_base.smn_auxiliar.aux_num_doc_oficial,
	smn_seguridad.s_user.user_id,
	smn_base.smn_auxiliar.aux_fecha_registro,
	smn_base.smn_usuarios.smn_usuarios_id,
	case 
		when smn_seguridad.s_user.enabled = 0 then 'Inactivo'
		when smn_seguridad.s_user.enabled = 1 then 'Activo'
	end as status
from
	smn_seguridad.s_user
	inner join smn_base.smn_usuarios on smn_base.smn_usuarios.smn_user_rf = smn_seguridad.s_user.user_id
	left outer join smn_base.smn_auxiliar on smn_base.smn_auxiliar.smn_auxiliar_id = smn_usuarios.smn_auxiliar_rf
	left outer join smn_base.smn_clase_auxiliar on smn_base.smn_clase_auxiliar.smn_clase_auxiliar_id = smn_base.smn_usuarios.smn_clase_auxiliar_rf
	left outer join smn_base.smn_tipo_doc_oficial on smn_base.smn_tipo_doc_oficial.smn_tipo_doc_oficial_id = smn_base.smn_auxiliar.aux_tipo_doc_oficial_rf
where
	smn_base.smn_auxiliar.aux_apellidos is not null
ORDER BY smn_base.smn_auxiliar.aux_fecha_registro desc
