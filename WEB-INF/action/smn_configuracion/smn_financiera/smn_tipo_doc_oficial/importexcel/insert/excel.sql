INSERT INTO smn_base.smn_tipo_doc_oficial
(
	smn_tipo_doc_oficial_id,
	tdo_codigo,
	tdo_descripcion,
	tdo_idioma,
	tdo_usuario,
	tdo_fecha_registro,
	tdo_hora
)
VALUES
(
	${seq:nextval@smn_base.seq_smn_tipo_doc_oficial},
	?,
	?,
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
