INSERT INTO smn_base.smn_tipo_cuenta_banco
(
	smn_tipo_cuenta_banco_id,
	tcb_codigo,
	tcb_descripcion,
	tcb_idioma,
	tcb_usuario,
	tcb_fecha_registro,
	tcb_hora
)
VALUES
(
	${seq:currval@smn_base.seq_smn_tipo_cuenta_banco},
	${fld:tcb_codigo},
	${fld:tcb_descripcion},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
