INSERT INTO smn_base.smn_rel_perfil_usuarios
(
	smn_rel_perfil_usuarios_id,
	smn_perfil_id,
	smn_usuarios_id
)
VALUES
(
	${seq:nextval@smn_base.seq_smn_rel_perfil_usuarios},
	${seq:currval@smn_base.seq_smn_perfil},
	${fld:smn_usuarios_id}
)
