INSERT INTO smn_base.smn_rel_proceso_respuesta
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
	${seq:currval@smn_base.seq_smn_rel_proceso_respuesta},
	${fld:smn_cuestionario_id},
	${fld:smn_modulo_rf},
	${fld:smn_esquema_rf},
	${fld:smn_campo_rf},
	${fld:smn_respuesta_id},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time
}'
)
