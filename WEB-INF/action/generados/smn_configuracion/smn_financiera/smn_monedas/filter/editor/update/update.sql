UPDATE smn_base.smn_monedas SET
	mon_codigo=${fld:mon_codigo},
	mon_nombre=${fld:mon_nombre},
	mon_idioma='${def:locale}',
	mon_usuario='${def:user}',
	mon_fecha_registro={d '${def:date}'},
	mon_hora='${def:time}'

WHERE
	smn_monedas_id=${fld:id}

