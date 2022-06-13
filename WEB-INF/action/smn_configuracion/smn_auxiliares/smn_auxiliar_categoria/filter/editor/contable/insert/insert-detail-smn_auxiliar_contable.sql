INSERT INTO smn_base.smn_auxiliar_contable
(
	smn_auxiliar_contable_id,
	aac_codigo,
	aac_descripcion,
	aac_tipo_doc_oficial,
	aac_num_doc_oficial,
	smn_auxiliar_categoria_id,
	aac_idioma,
	aac_usuario,
	aac_fecha_registro,
	aac_hora
)
VALUES
(
	${seq:nextval@smn_base.seq_smn_auxiliar_contable},
	${fld:aac_codigo2},
	${fld:aac_descripcion2},
	${fld:aac_tipo_doc_oficial2},
	${fld:aac_num_doc_oficial2},
	${seq:currval@smn_base.seq_smn_auxiliar_categoria},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
