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
	${seq:currval@smn_base.seq_smn_formas_pago},
	${fld:fop_codigo},
	${fld:fop_descripcion},
	${fld:fop_medio_pago},
	${fld:fop_requiere_banco},
	${fld:fop_franquicia},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
