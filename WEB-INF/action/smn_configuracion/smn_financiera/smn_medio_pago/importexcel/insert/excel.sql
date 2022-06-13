INSERT INTO smn_base.smn_medio_pago
(
	smn_medio_pago_id,
	mpa_codigo,
	mpa_descripcion,
	mpa_tipo_medio_pago,
	mpa_estatus,
	mpa_vigencia,
	mpa_fecha_registro
)
VALUES
(
	${seq:nextval@smn_base.seq_smn_medio_pago},
	?,
	?,
	?,
	?,
	?,
	{d '${def:date}'}
)
