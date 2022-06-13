UPDATE smn_base.smn_rel_proceso_respuesta SET
	smn_cuestionario_id=${fld:smn_cuestionario_id},
	smn_modulo_rf=${fld:smn_modulo_rf},
	smn_esquema_rf=${fld:smn_esquema_rf},
	smn_campo_rf=${fld:smn_campo_rf},
	smn_respuesta_id=${fld:smn_respuesta_id},
	cue_idioma='${def:locale}',
	cue_usuario='${def:user}',
	cue_fecha_registro={d '${def:date}'},
	cue_hora='${def:time}'

WHERE
	smn_rel_proceso_respuesta_id=${fld:id}

