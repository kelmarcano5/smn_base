UPDATE smn_base.smn_tasas_de_cambio SET
	tca_estatus='IN'
WHERE
	smn_tasas_de_cambio_id=(SELECT smn_tasas_de_cambio_id FROM smn_base.smn_tasas_de_cambio WHERE smn_monedas_id=${fld:smn_monedas_id} AND tca_moneda_referencia=${fld:tca_moneda_referencia} AND tca_tipo_tasa=${fld:tca_tipo_tasa} AND tca_estatus=${fld:tca_estatus} AND tca_fecha_vigencia=${fld:tca_fecha_vigencia});

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
	tca_hora,
	tca_descripcion,
	tca_tipo_tasa,
	tca_estatus
)
VALUES
(
	${seq:currval@smn_base.seq_smn_tasas_de_cambio},
	${fld:smn_monedas_id},
	${fld:tca_moneda_referencia},
	${fld:tca_fecha_vigencia},
	${fld:tca_tasa_cambio},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}',
	${fld:tca_descripcion},
	${fld:tca_tipo_tasa},
	${fld:tca_estatus}
);