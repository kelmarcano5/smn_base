INSERT INTO smn_rel_proceso_respuesta
(
	smn_rel_proceso_respuesta_id,
	smn_cuestionario_id,
	smn_modulo_rf,
	smn_esquema_rf,
	smn_campo_rf,
	smn_respuesta_id,
	cue_idioma,
	cue_usuario,
	cue_fecha_registro,
	cue_hora
)
VALUES
(
	${seq:nextval@seq_smn_rel_proceso_respuesta},
	?,
	?,
	?,
	?,
	?,
	'${def:locale
}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time
}'
)
