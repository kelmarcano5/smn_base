UPDATE smn_base.smn_descuento SET
	dct_codigo=${fld:dct_codigo},
	dct_nombre=${fld:dct_nombre},
	dct_porcentaje=${fld:dct_porcentaje},
	dct_aplica=${fld:dct_aplica},
	dct_idioma='${def:locale}',
	dct_usuario='${def:user}',
	dct_fecha_registro={d '${def:date}'},
	dct_hora='${def:time}'

WHERE
	smn_descuento_id=${fld:id}

