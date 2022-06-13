select
	smn_cuestionario.smn_cuestionario_id,
	smn_cuestionario.cue_codigo as cue_codigo_pl0,
	smn_pregunta.smn_pregunta_id,
	smn_pregunta.prg_codigo as prg_codigo_pl1,
	smn_base.smn_rel_cues_secc_preg.*
from
	smn_base.smn_seccion ,
	smn_base.smn_cuestionario,
	smn_base.smn_pregunta,
	smn_base.smn_rel_cues_secc_preg
where
	smn_rel_cues_secc_preg.smn_seccion_id=smn_seccion.smn_seccion_id and
	smn_seccion.smn_seccion_id=${fld:id}  and
	smn_cuestionario.smn_cuestionario_id=smn_rel_cues_secc_preg.smn_cuestionario_id and
	smn_pregunta.smn_pregunta_id=smn_rel_cues_secc_preg.smn_pregunta_id
	
