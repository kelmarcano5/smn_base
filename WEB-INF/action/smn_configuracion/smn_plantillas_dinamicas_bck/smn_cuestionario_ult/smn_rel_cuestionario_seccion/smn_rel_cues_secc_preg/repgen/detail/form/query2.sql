select
		smn_base.smn_rel_cues_secc_preg.smn_rel_cuestionario_seccion_id,
	smn_base.smn_rel_cues_secc_preg.smn_pregunta_id
from
	smn_base.smn_rel_cues_secc_preg 
where
	smn_base.smn_rel_cues_secc_preg.smn_rel_cues_secc_preg_id = ${fld:id}
