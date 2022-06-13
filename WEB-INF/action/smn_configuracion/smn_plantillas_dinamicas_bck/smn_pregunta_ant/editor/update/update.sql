UPDATE smn_base.smn_pregunta SET
	smn_tipo_variable_id=${fld:smn_tipo_variable_id},
	prg_codigo=${fld:prg_codigo},
	prg_descripcion=${fld:prg_descripcion},
	prg_tipo_respuesta=${fld:prg_tipo_respuesta},
	sec_estatus=${fld:sec_estatus},
	cue_idioma='${def:locale}',
	cue_usuario='${def:user}',
	cue_fecha_registro=	{d '${def:date}'},
	cue_hora='${def:time}'

WHERE
	smn_pregunta_id=${fld:id}

