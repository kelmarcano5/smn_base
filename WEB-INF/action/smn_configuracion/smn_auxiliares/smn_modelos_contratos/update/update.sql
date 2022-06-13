UPDATE smn_base.smn_modelos_contratos SET
	mct_modulo=${fld:mct_modulo},
	mct_descripcion=${fld:mct_descripcion},
	mct_idioma='${def:locale}',
	mct_usuario='${def:user}',
	mct_fecha_registro={d '${def:date}'},
	mct_hora='${def:time}'

WHERE
	smn_modelos_contratos_id=${fld:id}

