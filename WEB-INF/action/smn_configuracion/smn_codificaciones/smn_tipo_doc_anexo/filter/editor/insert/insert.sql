INSERT INTO smn_base.smn_tipo_doc_anexo
(
	smn_tipo_doc_anexo_id,
	tda_codigo,
	tda_descripción,
	tda_estatus,
	tda_vigencia,
	tda_idioma,
	tda_usuario,
	tda_fecha_registro,
	tda_hora
)
VALUES
(
	${seq:currval@smn_base.seq_smn_tipo_doc_anexo},
	${fld:tda_codigo},
	${fld:tda_descripción},
	${fld:tda_estatus},
	${fld:tda_vigencia},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
