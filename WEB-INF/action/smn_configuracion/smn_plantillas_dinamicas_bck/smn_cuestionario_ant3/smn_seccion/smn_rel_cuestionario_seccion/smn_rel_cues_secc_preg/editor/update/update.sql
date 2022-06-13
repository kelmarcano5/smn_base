UPDATE smn_base.smn_rel_cues_secc_preg SET
	
	smn_rel_cuestionario_seccion_id=${fld:smn_rel_cuestionario_seccion_id},

	smn_pregunta_id=${fld:smn_pregunta_id}

WHERE
	smn_rel_cues_secc_preg_id=${fld:id}

