INSERT INTO smn_base.smn_rel_paso_accion
(
	smn_rel_paso_accion_id,
	smn_paso_id,
	smn_accion_id
)
VALUES
(
	${seq:nextval@smn_base.seq_smn_rel_paso_accion},
	${fld:id},
	${fld:smn_accion_id}
)
