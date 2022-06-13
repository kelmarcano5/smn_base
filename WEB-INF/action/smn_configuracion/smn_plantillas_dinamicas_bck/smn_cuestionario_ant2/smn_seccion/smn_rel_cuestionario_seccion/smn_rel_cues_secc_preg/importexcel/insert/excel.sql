INSERT INTO smn_rel_cues_secc_preg
(
	smn_rel_cues_secc_preg_id,
	smn_rel_cuestionario_seccion_id,
	smn_pregunta_id
)
VALUES
(
	${seq:nextval@seq_smn_rel_cues_secc_preg},
	?,
	?
)
