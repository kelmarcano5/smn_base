INSERT INTO smn_base.smn_rel_modulo_clase_aux
(
	smn_rel_modulo_clase_aux_id,
	smn_modulos_rf,
	smn_clase_auxiliar_rf,
	rma_fecha_registro
)
VALUES
(
	${seq:nextval@smn_base.seq_smn_rel_modulo_clase_aux},
	?,
	?,
	{d '${def:date}'}
)
