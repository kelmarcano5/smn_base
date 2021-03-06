INSERT INTO smn_base.smn_usuarios
(
	smn_usuarios_id,
	smn_entidades_id,
	usr_usuario_id,
	usr_comunidad,
	usr_nombres,
	usr_apellidos,
	usr_nacionalidad,
	usr_nro_doc_identidad,
	usr_nro_id_fiscal,
	usr_direccion,
	usr_email,
	usr_telefono_fijo,
	usr_telefono_movil,
	usr_idioma,
	usr_usuario,
	usr_fecha_registro,
	usr_hora
)
VALUES
(
	${seq:nextval@smn_base.seq_smn_usuarios},
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
