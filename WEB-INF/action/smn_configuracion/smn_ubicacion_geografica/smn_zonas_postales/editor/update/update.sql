UPDATE smn_base.smn_zonas_postales SET
	zpo_parroquias=${fld:zpo_parroquias},
	zpo_codigo=${fld:zpo_codigo},
	zpo_sector=${fld:zpo_sector},
	zpo_idioma='${def:locale}',
	zpo_usuario='${def:user}',
	zpo_fecha_registro={d '${def:date}'},
	zpo_hora='${def:time}'

WHERE
	smn_zonas_postales_id=${fld:id}

