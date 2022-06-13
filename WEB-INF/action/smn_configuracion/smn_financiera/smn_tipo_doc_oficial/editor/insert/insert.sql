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
	${seq:currval@smn_base.seq_smn_tipo_doc_oficial},
	${fld:tdo_codigo},
	${fld:tdo_descripcion},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
