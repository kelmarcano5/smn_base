UPDATE smn_base.smn_tipo_contribuyente SET
	tco_estatus = (CASE WHEN (tco_estatus = 'AC') THEN 'IN'
			ELSE 'AC'
 END),
	tco_idioma='${def:locale}',
	tco_usuario='${def:user}',
	tco_fecha_registro={d '${def:date}'},
	tco_hora='${def:time}'

WHERE
	smn_tipo_contribuyente_id=${fld:id}

