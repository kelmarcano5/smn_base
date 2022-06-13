INSERT INTO smn_base.smn_rel_cues_secc_preg
(
	smn_rel_cues_secc_preg_id,
	smn_pregunta_id
)
VALUES
(
	${seq:currval@smn_base.seq_smn_rel_cues_secc_preg},
	${fld:smn_pregunta_id}
)
