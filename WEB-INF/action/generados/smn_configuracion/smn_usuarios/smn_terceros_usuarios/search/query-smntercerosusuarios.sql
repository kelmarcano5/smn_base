select	
	smn_base.smn_terceros.smn_terceros_id, 
	smn_base.smn_terceros.ter_descripcion_corta as ter_descripcion_corta_pl0,
	smn_base.smn_terceros_usuarios.tru_telefono_movil,
	smn_base.smn_terceros_usuarios.tru_fecha_registro,
	smn_base.smn_terceros_usuarios.smn_terceros_id,
	smn_base.smn_terceros_usuarios.tru_usuario_id,
	smn_base.smn_terceros_usuarios.tru_comunidad,
	smn_base.smn_terceros_usuarios.tru_nombres,
	smn_base.smn_terceros_usuarios.tru_apellidos,
	smn_base.smn_terceros_usuarios.tru_nacionalidad,
	smn_base.smn_terceros_usuarios.tru_nro_doc_identidad,
	smn_base.smn_terceros_usuarios.tru_nro_id_fiscal,
	smn_base.smn_terceros_usuarios.tru_direccion,
	smn_base.smn_terceros_usuarios.tru_email,
	smn_base.smn_terceros_usuarios.tru_telefono_fijo,
	smn_base.smn_terceros_usuarios.smn_terceros_usuarios_id
from
	smn_base.smn_terceros,
	smn_base.smn_terceros_usuarios 
where
	smn_base.smn_terceros.smn_terceros_id=smn_base.smn_terceros_usuarios.smn_terceros_id 

