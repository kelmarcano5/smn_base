INSERT INTO smn_base.smn_rel_prestadores_servicios_componentes
(
	smn_rel_prestadores_servicios_componentes_id,
	smn_prestadores_servicios_id,
	smn_componentes_id
)
VALUES
(
	${seq:nextval@smn_base.seq_smn_rel_prestadores_servicios_componentes},
	${seq:currval@smn_base.seq_smn_prestadores_servicios},
	${fld:smn_componentes_id}
)
