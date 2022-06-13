select smn_seguridad.s_user.user_id as smn_usuarios_id,
	smn_base.smn_v_usuarios.usr_nombres ||' - '|| smn_base.smn_v_usuarios.usr_apellidos as smn_user_rf,
	smn_base.smn_clase_auxiliar.cla_codigo ||' - '|| smn_base.smn_clase_auxiliar.cla_nombre as smn_clase_auxiliar_rf,
	smn_base.smn_tipo_registro.trg_codigo ||' - '|| smn_base.smn_tipo_registro.trg_descripcion as smn_tipo_registro_rf
from
	smn_base.smn_usuarios 
	left outer join smn_base.smn_v_usuarios on smn_base.smn_v_usuarios.smn_usuarios_id = smn_base.smn_usuarios.smn_usuarios_id
	left outer join smn_base.smn_auxiliar on smn_base.smn_auxiliar.smn_auxiliar_id = smn_base.smn_v_usuarios.smn_auxiliar_rf
	left outer join smn_seguridad.s_user on smn_seguridad.s_user.user_id = smn_base.smn_usuarios.smn_user_rf
	left outer join smn_base.smn_clase_auxiliar on smn_base.smn_clase_auxiliar.smn_clase_auxiliar_id = smn_base.smn_usuarios.smn_clase_auxiliar_rf
	left outer join smn_base.smn_tipo_registro on smn_base.smn_tipo_registro.smn_tipo_registro_id = smn_base.smn_usuarios.smn_tipo_registro_rf
where 
	smn_seguridad.s_user.user_id is not null and smn_base.smn_v_usuarios.usr_nombres  is not null
	${filter}