select
	smn_pregunta.smn_pregunta_id,
	smn_pregunta.prg_codigo as prg_codigo_pl1,
	smn_rel_cues_secc_preg.smn_rel_cuestionario_seccion_id,
	smn_rel_cues_secc_preg.smn_pregunta_id,
	smn_rel_cues_secc_preg.csp_secuencia,
	smn_rel_cues_secc_preg.smn_rel_cues_secc_preg_id
	
from
	smn_base.smn_pregunta,
	smn_base.smn_rel_cues_secc_preg
where
	smn_base.smn_rel_cues_secc_preg.smn_rel_cues_secc_preg_id is not null
	and 	smn_pregunta.smn_pregunta_id=smn_rel_cues_secc_preg.smn_pregunta_id
	${filter}
order by
		smn_base.smn_rel_cues_secc_preg.smn_rel_cues_secc_preg_id
