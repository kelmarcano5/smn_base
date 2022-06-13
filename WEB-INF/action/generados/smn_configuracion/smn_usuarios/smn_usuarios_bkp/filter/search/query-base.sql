select	
	smn_base.smn_entidades.smn_entidades_id, 
	smn_base.smn_entidades.ent_codigo as ent_codigo_pl0,
	smn_base.smn_usuarios.smn_entidades_id,
	smn_base.smn_usuarios.usr_fecha_registro,
	smn_base.smn_usuarios.usr_usuario_id,
	smn_base.smn_usuarios.usr_nombres,
	smn_base.smn_usuarios.usr_apellidos,
	smn_base.smn_usuarios.usr_nacionalidad,
	smn_base.smn_usuarios.usr_nro_doc_identidad,
	smn_base.smn_usuarios.usr_nro_id_fiscal,
	smn_base.smn_usuarios.usr_direccion,
	smn_base.smn_usuarios.usr_email,
	smn_base.smn_usuarios.usr_telefono_fijo,
	smn_base.smn_usuarios.usr_telefono_movil,
	smn_base.smn_usuarios.smn_usuarios_id
from
	smn_base.smn_entidades,
	smn_base.smn_usuarios
where
	smn_usuarios_id is not null	
and 	smn_base.smn_entidades.smn_entidades_id=smn_base.smn_usuarios.smn_entidades_id 
	 	${filter}
order by 
	smn_usuarios_id