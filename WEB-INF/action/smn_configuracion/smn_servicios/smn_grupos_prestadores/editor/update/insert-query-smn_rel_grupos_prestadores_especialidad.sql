INSERT INTO smn_base.smn_rel_grupos_prestadores_especialidad
(
	smn_rel_grupos_prestadores_especialidad_id,
	smn_grupos_prestadores_id,
	smn_especialidad_id
)
VALUES
(
	${seq:nextval@smn_base.seq_smn_rel_grupos_prestadores_especialidad},
	${fld:id},
	${fld:smn_especialidad_id}
)
