select
	smn_cuestionario.smn_cuestionario_id,
	smn_cuestionario.cue_codigo as cue_codigo_pl0,
select
select
select
	smn_rel_proceso_respuesta.smn_cuestionario_id,
	smn_rel_proceso_respuesta.smn_modulo_rf,
	smn_rel_proceso_respuesta.smn_esquema_rf,
	smn_rel_proceso_respuesta.smn_campo_rf,
	smn_rel_proceso_respuesta.smn_respuesta_id,
	smn_rel_proceso_respuesta.cue_idioma,
	smn_rel_proceso_respuesta.cue_usuario,
	smn_rel_proceso_respuesta.cue_fecha_registro,
	smn_rel_proceso_respuesta.cue_hora,
	smn_rel_proceso_respuesta.smn_rel_proceso_respuesta_id
	
from
	smn_cuestionario,
	smn_rel_proceso_respuesta
where
	smn_rel_proceso_respuesta_id is not null
	and 	smn_cuestionario.smn_cuestionario_id=smn_rel_proceso_respuesta.smn_cuestionario_id
	${filter}
order by
		smn_rel_proceso_respuesta_id
