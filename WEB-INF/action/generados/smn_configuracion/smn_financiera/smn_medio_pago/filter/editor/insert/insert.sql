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
	${seq:currval@smn_base.seq_smn_medio_pago},
	${fld:mpa_codigo},
	${fld:mpa_descripcion},
	${fld:mpa_efectivo},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
