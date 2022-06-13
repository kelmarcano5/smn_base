UPDATE smn_base.smn_naturaleza_auxiliar SET
	naa_codigo=${fld:naa_codigo},
	naa_nombre=${fld:naa_nombre},
	naa_idioma='${def:locale}',
	naa_usuario='${def:user}',
	naa_fecha_registro={d '${def:date}'},
	naa_hora='${def:time}'

WHERE
	smn_naturaleza_auxiliar_id=${fld:id}

