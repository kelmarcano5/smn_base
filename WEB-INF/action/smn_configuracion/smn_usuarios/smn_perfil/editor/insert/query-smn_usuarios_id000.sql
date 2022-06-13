select smn_seguridad.s_user.user_id  as smn_usuarios_id
from
	smn_base.smn_usuarios 
	left outer join smn_seguridad.s_user on smn_seguridad.s_user.user_id = smn_base.smn_usuarios.smn_user_rf