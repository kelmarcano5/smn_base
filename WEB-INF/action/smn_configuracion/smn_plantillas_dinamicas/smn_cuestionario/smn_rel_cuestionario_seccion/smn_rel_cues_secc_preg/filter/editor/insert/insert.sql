INSERT INTO smn_base.smn_rel_cues_secc_preg
(
	smn_rel_cues_secc_preg_id,
	smn_rel_cuestionario_seccion_id,
	smn_pregunta_id,
	csp_secuencia

)
VALUES
(
	${seq:currval@smn_base.seq_smn_rel_cues_secc_preg},
	${fld:smn_rel_cuestionario_seccion_id},
	${fld:smn_pregunta_id},
	${fld:csp_secuencia}
	
)