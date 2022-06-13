select smn_seguridad.s_user.user_id, 
	smn_base.smn_v_usuarios.usr_nombres ||' - '|| smn_base.smn_v_usuarios.usr_apellidos as item
from
	smn_base.smn_usuarios 
	left outer join smn_base.smn_v_usuarios on smn_base.smn_v_usuarios.smn_usuarios_id = smn_base.smn_usuarios.smn_usuarios_id
	left outer join smn_base.smn_auxiliar on smn_base.smn_auxiliar.smn_auxiliar_id = smn_base.smn_v_usuarios.smn_auxiliar_rf
	left outer join smn_seguridad.s_user on smn_seguridad.s_user.user_id = smn_base.smn_usuarios.smn_user_rf
