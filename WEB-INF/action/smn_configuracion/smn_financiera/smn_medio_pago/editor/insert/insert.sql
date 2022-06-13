INSERT INTO smn_base.smn_medio_pago
(
	smn_medio_pago_id,
	mpa_codigo,
	mpa_descripcion,
	mpa_tipo_medio_pago,
	mpa_estatus,
	mpa_vigencia,
	mpa_idioma,
	mpa_usuario,
	mpa_fecha_registro,
	mpa_hora,
	mpa_moneda_alterna
)
VALUES
(
	${seq:currval@smn_base.seq_smn_medio_pago},
	${fld:mpa_codigo},
	${fld:mpa_descripcion},
	${fld:mpa_tipo_medio_pago},
	${fld:mpa_estatus},
	{d '${def:date}'},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}',
	${fld:mpa_moneda_alterna}
)
