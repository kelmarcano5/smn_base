INSERT INTO smn_base.smn_rel_grupo_prestador_servicio
(
	smn_rel_grupo_prestador_servicio_id,
	smn_grupos_prestadores_id,
	smn_prestadores_servicios_id
)
VALUES
(
	${seq:nextval@smn_base.seq_smn_rel_grupo_prestador_servicio},
	${fld:smn_grupos_prestadores_id},
	${seq:currval@smn_base.seq_smn_prestadores_servicios}
)
