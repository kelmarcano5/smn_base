INSERT INTO smn_base.smn_tasas_de_cambio
(
	smn_tasas_de_cambio_id,
	smn_monedas_id,
	tca_moneda_referencia,
	tca_fecha_vigencia,
	tca_tasa_cambio
)
VALUES
(
	${seq:nextval@smn_base.seq_smn_tasas_de_cambio},
	?,
	?,
	?,
	?
)
