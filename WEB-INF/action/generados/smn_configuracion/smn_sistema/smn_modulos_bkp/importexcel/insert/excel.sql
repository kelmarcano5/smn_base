INSERT INTO smn_base.smn_modulos
(
	smn_modulos_id,
	smn_entidades_id,
	smn_app_id,
	mod_codigo,
	mod_nombre
)
VALUES
(
	${seq:nextval@smn_base.seq_smn_modulos},
	?,
	?,
	?,
	?
)
