INSERT INTO smn_base.smn_descuento
(
	smn_descuento_id,
	dct_codigo,
	dct_nombre,
	dct_porcentaje,
	dct_aplica,
	dct_idioma,
	dct_usuario,
	dct_fecha_registro,
	dct_hora
)
VALUES
(
	${seq:currval@smn_base.seq_smn_descuento},
	${fld:dct_codigo},
	${fld:dct_nombre},
	${fld:dct_porcentaje},
	${fld:dct_aplica},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
