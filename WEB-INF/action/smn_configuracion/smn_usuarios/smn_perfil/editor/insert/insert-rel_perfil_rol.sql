INSERT INTO smn_base.smn_rel_perfil_rol
(
	smn_rel_perfil_rol_id,
	smn_perfil_id,
	role_id
)
VALUES
(
	${seq:nextval@smn_base.seq_smn_rel_perfil_rol},
	${seq:currval@smn_base.seq_smn_perfil},
	${fld:service_id}
)
