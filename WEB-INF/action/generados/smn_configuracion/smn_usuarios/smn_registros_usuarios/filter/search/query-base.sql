select	
	smn_base.smn_registros_usuarios.rgu_tipo_doc_oficial,
	smn_base.smn_registros_usuarios.rgu_num_doc_oficial,
	smn_base.smn_registros_usuarios.rgu_nro_id_fiscal,
	smn_base.smn_registros_usuarios.rgu_nombres,
	smn_base.smn_registros_usuarios.rgu_apellidos,
	smn_base.smn_registros_usuarios.rgu_tipo_registro,
	smn_base.smn_registros_usuarios.rgu_email,
	smn_base.smn_registros_usuarios.rgu_fecha_registro,
	smn_base.smn_registros_usuarios.smn_registros_usuarios_id
from
	smn_base.smn_registros_usuarios
where
	smn_base.smn_registros_usuarios.smn_registros_usuarios_id is not null	
 	 	${filter}
order by 
	smn_base.smn_registros_usuarios.smn_registros_usuarios_id desc