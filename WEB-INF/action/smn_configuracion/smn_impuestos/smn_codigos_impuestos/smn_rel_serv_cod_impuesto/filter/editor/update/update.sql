UPDATE smn_base.smn_rel_serv_cod_impuesto SET
	smn_codigos_impuestos_id=${fld:smn_codigos_impuestos_id},
	smn_servicios_id=${fld:smn_servicios_id},
	rsi_idioma='${def:locale}',
	rsi_usuario='${def:user}',
	rsi_fecha_registro={d '${def:date}'},
	rsi_hora='${def:time}'

WHERE
	smn_rel_serv_cod_impuesto_id=${fld:id}

