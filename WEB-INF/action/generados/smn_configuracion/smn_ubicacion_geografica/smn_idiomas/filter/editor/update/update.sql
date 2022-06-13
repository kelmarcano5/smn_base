UPDATE smn_base.smn_idiomas SET
	idi_codigo=${fld:idi_codigo},
	idi_descripcion=${fld:idi_descripcion},
	idi_idioma='${def:locale}',
	idi_usuario='${def:user}',
	idi_fecha_registro={d '${def:date}'},
	idi_hora='${def:time}'

WHERE
	smn_idiomas_id=${fld:id}

