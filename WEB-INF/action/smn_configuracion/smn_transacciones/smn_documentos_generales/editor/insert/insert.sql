INSERT INTO smn_base.smn_documentos_generales
(
	smn_documentos_generales_id,
	dcg_codigo,
	dcg_descripcion,
	dcg_modulo_origen,
	dcg_idioma,
	dcg_usuario,
	dcg_fecha_registro,
	dcg_hora
)
VALUES
(
	${seq:currval@smn_base.seq_smn_documentos_generales},
	${fld:dcg_codigo},
	${fld:dcg_descripcion},
	${fld:dcg_modulo_origen},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
