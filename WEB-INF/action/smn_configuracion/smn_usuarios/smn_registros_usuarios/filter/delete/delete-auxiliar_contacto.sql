delete from smn_base.smn_auxiliar_contacto 
	inner join smn_base.smn_usuarios on smn_base.smn_usuarios.smn_user_rf = smn_seguridad.s_user.user_id
	where smn_base.smn_usuarios.smn_user_rf= ${fld:id}