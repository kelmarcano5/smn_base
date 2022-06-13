INSERT INTO smn_base.smn_formas_pago
(
	smn_formas_pago_id,
	fop_codigo,
	fop_descripcion,
	fop_medio_pago,
	fop_requiere_banco,
	fop_franquicia,
	fop_idioma,
	fop_usuario,
	fop_fecha_registro,
	fop_hora
)
VALUES
(
	${seq:nextval@smn_base.seq_smn_formas_pago},
	?,
	?,
	?,
	?,
	?,
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
