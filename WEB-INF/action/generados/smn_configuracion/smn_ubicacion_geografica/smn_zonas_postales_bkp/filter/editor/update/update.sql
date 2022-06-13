UPDATE smn_base.smn_zonas_postales SET
	zpo_ciudades=${fld:zpo_ciudades},
	zpo_codigo=${fld:zpo_codigo},
	zpo_idioma='${def:locale}',
	zpo_usuario='${def:user}',
	zpo_fecha_registro={d '${def:date}'},
	zpo_hora='${def:time}'

WHERE
	smn_zonas_postales_id=${fld:id}

