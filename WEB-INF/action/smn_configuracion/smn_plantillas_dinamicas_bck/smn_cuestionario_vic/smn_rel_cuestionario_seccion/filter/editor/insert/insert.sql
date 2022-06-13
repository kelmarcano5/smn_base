INSERT INTO smn_base.smn_rel_cuestionario_seccion
(
	smn_rel_cuestionario_seccion_id,
	smn_cuestionario_id,
	smn_seccion_id,
	rcs_secuencia

)
VALUES
(
	${seq:currval@smn_base.seq_smn_rel_cuestionario_seccion},
	${fld:smn_cuestionario_id},
	${fld:smn_seccion_id},
	${fld:rcs_secuencia}

)
