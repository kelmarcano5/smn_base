select
	smn_pregunta.smn_pregunta_id,
	smn_pregunta.prg_codigo as prg_codigo_pl0,
	smn_base.smn_rel_cues_secc_preg.*
from
	smn_base.smn_rel_cuestionario_seccion,
	smn_base.smn_pregunta,
	smn_base.smn_rel_cues_secc_preg
where
	smn_rel_cues_secc_preg.smn_rel_cuestionario_seccion_id=smn_rel_cuestionario_seccion.smn_rel_cuestionario_seccion_id and
	smn_rel_cuestionario_seccion.smn_rel_cuestionario_seccion_id=${fld:id}  and
	smn_pregunta.smn_pregunta_id=smn_rel_cues_secc_preg.smn_pregunta_id
	
