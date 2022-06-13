UPDATE smn_base.smn_tasas_de_cambio SET
	smn_monedas_id=${fld:smn_monedas_id},
	tca_moneda_referencia=${fld:tca_moneda_referencia},
	tca_fecha_vigencia=${fld:tca_fecha_vigencia},
	tca_tasa_cambio=${fld:tca_tasa_cambio},
	tca_idioma='${def:locale}',
	tca_usuario='${def:user}',
	tca_fecha_registro={d '${def:date}'},
	tca_hora='${def:time}',
	tca_descripcion=${fld:tca_descripcion},
	tca_tipo_tasa=${fld:tca_tipo_tasa},
	tca_estatus=${fld:tca_estatus}
WHERE
	smn_tasas_de_cambio_id=${fld:id}

