select smn_base.smn_rel_perfil_usuarios.*, smn_seguridad.s_user.*,
smn_base.smn_perfil.*,
smn_seguridad.s_user.fname 	||'  '|| smn_seguridad.s_user.lname as name_user
from smn_base.smn_rel_perfil_usuarios
inner join smn_base.smn_perfil on smn_base.smn_perfil.smn_perfil_id = smn_base.smn_rel_perfil_usuarios.smn_perfil_id
inner join smn_base.smn_usuarios on smn_base.smn_usuarios.smn_user_rf = smn_base.smn_rel_perfil_usuarios.smn_usuarios_id
inner join smn_seguridad.s_user on  smn_seguridad.s_user.user_id = smn_base.smn_usuarios.smn_user_rf
where 
smn_base.smn_rel_perfil_usuarios.smn_perfil_id = ${fld:id} and
smn_base.smn_rel_perfil_usuarios.smn_perfil_id = smn_base.smn_perfil.smn_perfil_id