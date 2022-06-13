INSERT INTO smn_base.smn_rel_serv_tipo_doc_anexo
(
	smn_rel_serv_tipo_doc_anexo_id,
	smn_servicios_id,
	smn_tipo_doc_anexo_id,
	rst_idioma,
	rst_usuario,
	rst_fecha_registro,
	rst_hora
)
VALUES
(
	${seq:nextval@smn_base.seq_smn_rel_serv_tipo_doc_anexo},
	?,
	?,
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
