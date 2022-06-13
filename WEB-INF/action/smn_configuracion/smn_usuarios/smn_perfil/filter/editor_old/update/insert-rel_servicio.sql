INSERT INTO smn_base.smn_rel_perfil_servicios
(
	smn_rel_perfil_servicios_id,
	smn_perfil_id,
	service_id
)
VALUES
(
	${seq:nextval@smn_base.seq_smn_rel_perfil_servicios},
	${fld:id},
	${fld:service_id}
)
