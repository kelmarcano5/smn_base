INSERT INTO smn_base.smn_paso
(
	smn_paso_id,
	pas_codigo,
	pas_descripcion,
	pas_cod_paso_anterior,
	pas_cod_paso_siguiente,
	pas_estatus_doc,
	pas_idioma,
	pas_usuario,
	pas_fecha_registro,
	pas_hora
)
VALUES
(
	${seq:currval@smn_base.seq_smn_paso},
	${fld:pas_codigo},
	${fld:pas_descripcion},
	${fld:pas_cod_paso_anterior},
	${fld:pas_cod_paso_siguiente},
	${fld:pas_estatus_doc},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
