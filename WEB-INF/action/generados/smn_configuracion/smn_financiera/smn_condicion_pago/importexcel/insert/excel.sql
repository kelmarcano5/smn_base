INSERT INTO smn_base.smn_condicion_pago
(
	smn_condicion_pago_id,
	cop_codigo,
	cop_descripcion,
	cop_idioma,
	cop_usuario,
	cop_fecha_registro,
	cop_hora
)
VALUES
(
	${seq:nextval@smn_base.seq_smn_condicion_pago},
	?,
	?,
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
