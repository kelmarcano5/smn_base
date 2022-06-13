INSERT INTO smn_base.smn_rel_grupo_prestador_servicio
(
	smn_rel_grupo_prestador_servicio_id,
	smn_prestadores_servicios_id,
	smn_grupos_prestadores_id
)
VALUES
(
	${seq:currval@smn_base.seq_smn_rel_grupo_prestador_servicio},
	${fld:smn_prestadores_servicios_id},
	${fld:smn_grupos_prestadores_id}
)
