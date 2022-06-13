INSERT INTO smn_base.smn_descuento
(
	smn_descuento_id,
	dct_codigo,
	dct_nombre,
	dct_porcentaje,
	dct_aplica,
	dct_fecha_registro
)
VALUES
(
	${seq:nextval@smn_base.seq_smn_descuento},
	?,
	?,
	?,
	?,
	{d '${def:date}'}
)
