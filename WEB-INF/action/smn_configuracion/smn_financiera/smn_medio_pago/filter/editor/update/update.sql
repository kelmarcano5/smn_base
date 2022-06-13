UPDATE smn_base.smn_medio_pago SET
	mpa_codigo=${fld:mpa_codigo},
	mpa_descripcion=${fld:mpa_descripcion},
	mpa_tipo_medio_pago=${fld:mpa_tipo_medio_pago},
	mpa_estatus=${fld:mpa_estatus},
	mpa_vigencia={d '${def:date}'},
	mpa_idioma='${def:locale}',
	mpa_usuario='${def:user}',
	mpa_fecha_registro={d '${def:date}'},
	mpa_hora='${def:time}',
	mpa_moneda_alterna=${fld:mpa_moneda_alterna}

WHERE
	smn_medio_pago_id=${fld:id}

