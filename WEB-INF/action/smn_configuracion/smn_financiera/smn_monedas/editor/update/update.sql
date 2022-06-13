UPDATE smn_base.smn_monedas SET
	mon_codigo=${fld:mon_codigo},
	mon_nombre=${fld:mon_nombre},
	mon_idioma='${def:locale}',
	mon_usuario='${def:user}',
	mon_simbolo=${fld:mon_simbolo}
WHERE
	smn_base.smn_monedas.smn_monedas_id=${fld:id}

