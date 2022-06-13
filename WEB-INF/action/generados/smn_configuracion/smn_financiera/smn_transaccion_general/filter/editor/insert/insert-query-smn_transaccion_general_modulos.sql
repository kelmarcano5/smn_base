INSERT INTO smn_base.smn_transaccion_general_modulos
(
	smn_transaccion_general_modulos_id,
	smn_transaccion_general_id,
	smn_modulos_id
)
VALUES
(
	${seq:nextval@smn_base.seq_smn_transaccion_general_modulos},
	${seq:currval@smn_base.seq_smn_transaccion_general},
	${fld:smn_modulos_id}
)
