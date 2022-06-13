INSERT INTO smn_base.smn_medio_pago
(
	smn_medio_pago_id,
	mpa_codigo,
	mpa_descripcion,
	mpa_efectivo,
	mpa_idioma,
	mpa_usuario,
	mpa_fecha_registro,
	mpa_hora
)
VALUES
(
	${seq:nextval@smn_base.seq_smn_medio_pago},
	?,
	?,
	?,
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
