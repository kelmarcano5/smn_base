INSERT INTO smn_base.smn_transaccion_general
(
	smn_transaccion_general_id,
	trg_codigo,
	trg_descripcion,
	trg_modulo_origen,
	trg_idioma,
	trg_usuario,
	trg_fecha_registro,
	trg_hora
)
VALUES
(
	${seq:currval@smn_base.seq_smn_transaccion_general},
	${fld:trg_codigo},
	${fld:trg_descripcion},
	${fld:trg_modulo_origen},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
