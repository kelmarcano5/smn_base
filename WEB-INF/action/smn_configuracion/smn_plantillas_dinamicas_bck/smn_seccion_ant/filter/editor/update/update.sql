UPDATE smn_base.smn_seccion SET
	smn_cuestionario_id=${fld:smn_cuestionario_id},
	sec_codigo=${fld:sec_codigo},
	sec_descripcion=${fld:sec_descripcion},
	cue_idioma='${def:locale}',
	cue_usuario='${def:user}',
	cue_fecha_registro='${def:date}',
	cue_hora='${def:time}'

WHERE
	smn_seccion_id=${fld:id}

