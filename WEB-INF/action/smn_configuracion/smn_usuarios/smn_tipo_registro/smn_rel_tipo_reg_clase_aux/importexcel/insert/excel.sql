INSERT INTO smn_base.smn_rel_tipo_reg_clase_aux
(
	smn_rel_tipo_reg_clase_aux_id,
	smn_tipo_registro_rf,
	smn_clase_auxiliar_rf
)
VALUES
(
	${seq:nextval@smn_base.seq_smn_rel_tipo_reg_clase_aux},
	?,
	?
)
