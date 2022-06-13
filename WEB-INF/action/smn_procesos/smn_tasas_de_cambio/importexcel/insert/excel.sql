INSERT INTO smn_base.smn_tasas_de_cambio
(
	smn_tasas_de_cambio_id,
	smn_monedas_id,
	tca_moneda_referencia,
	tca_fecha_vigencia,
	tca_tasa_cambio,
	tca_idioma,
	tca_usuario,
	tca_fecha_registro,
	tca_hora
)
VALUES
(
	${seq:nextval@smn_base.seq_smn_tasas_de_cambio},
	?,
	?,
	?,
	?,
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
