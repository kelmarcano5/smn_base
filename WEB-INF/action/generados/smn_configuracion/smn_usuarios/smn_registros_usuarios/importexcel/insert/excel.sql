INSERT INTO smn_base.smn_registros_usuarios
(
	smn_registros_usuarios_id,
	rgu_tipo_doc_oficial,
	rgu_num_doc_oficial,
	rgu_nro_id_fiscal,
	rgu_nombres,
	rgu_apellidos,
	rgu_tipo_registro,
	rgu_email,
	rgu_idioma,
	rgu_usuario,
	rgu_fecha_registro,
	rgu_hora
)
VALUES
(
	${seq:nextval@smn_base.seq_smn_registros_usuarios},
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
