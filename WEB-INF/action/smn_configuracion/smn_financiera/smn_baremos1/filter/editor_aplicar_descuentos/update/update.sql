UPDATE smn_base.smn_baremos_detalle SET
	smn_descuento_rf=${fld:smn_codigo_descuento_rf},
	bad_idioma='${def:locale}',
	bad_usuario='${def:user}',
	bad_fecha_registro={d '${def:date}'},
	bad_hora='${def:time}'

WHERE
	smn_baremos_detalle_id=${fld:id}

