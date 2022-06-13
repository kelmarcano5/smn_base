UPDATE smn_base.smn_cuestionario SET
	cue_codigo=${fld:cue_codigo},
	cue_descripcion=${fld:cue_descripcion},
	smn_modulo_rf=${fld:smn_modulo_rf},
	smn_esquema_rf=${fld:smn_esquema_rf},
	smn_campo_rf=${fld:smn_campo_rf},
	cue_idioma='${def:locale}',
	cue_usuario='${def:user}',
	cue_fecha_registro={d '${def:date}'},
	cue_hora='${def:time}'

WHERE
	smn_cuestionario_id=${fld:id}

