select
	smn_cuestionario.smn_cuestionario_id,
	smn_cuestionario.cue_codigo as cue_codigo_pl0,
	smn_base.smn_rel_proceso_respuesta.*
from
	smn_base.smn_cuestionario,
	smn_base.smn_rel_proceso_respuesta
where
	smn_cuestionario.smn_cuestionario_id=smn_rel_proceso_respuesta.smn_cuestionario_id
	and
	smn_base.smn_rel_proceso_respuesta.smn_rel_proceso_respuesta_id = ${fld:id}
