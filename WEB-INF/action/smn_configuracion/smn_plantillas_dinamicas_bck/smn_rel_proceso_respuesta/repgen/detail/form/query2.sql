select
		smn_base.smn_rel_proceso_respuesta.smn_cuestionario_id,
	smn_base.smn_rel_proceso_respuesta.smn_modulo_rf,
	smn_base.smn_rel_proceso_respuesta.smn_esquema_rf,
	smn_base.smn_rel_proceso_respuesta.smn_campo_rf,
	smn_base.smn_rel_proceso_respuesta.smn_respuesta_id,
	smn_base.smn_rel_proceso_respuesta.cue_fecha_registro,
	smn_base.smn_rel_proceso_respuesta.smn_cuestionario_id,
	smn_base.smn_rel_proceso_respuesta.smn_modulo_rf,
	smn_base.smn_rel_proceso_respuesta.smn_esquema_rf,
	smn_base.smn_rel_proceso_respuesta.smn_campo_rf,
	smn_base.smn_rel_proceso_respuesta.smn_respuesta_id,
	smn_base.smn_rel_proceso_respuesta.cue_fecha_registro
from
	smn_base.smn_rel_proceso_respuesta 
where
	smn_base.smn_rel_proceso_respuesta.smn_rel_proceso_respuesta_id = ${fld:id}
