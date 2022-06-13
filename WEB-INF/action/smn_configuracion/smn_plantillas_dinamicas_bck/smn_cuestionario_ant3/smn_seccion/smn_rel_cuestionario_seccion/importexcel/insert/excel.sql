INSERT INTO smn_rel_cuestionario_seccion
(
	smn_rel_cuestionario_seccion_id,
	smn_cuestionario_id,
	smn_seccion_id
)
VALUES
(
	${seq:nextval@seq_smn_rel_cuestionario_seccion},
	?,
	?
)
