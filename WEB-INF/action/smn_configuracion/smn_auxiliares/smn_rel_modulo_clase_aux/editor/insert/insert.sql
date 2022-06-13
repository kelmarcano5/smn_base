INSERT INTO smn_base.smn_rel_modulo_clase_aux
(
	smn_rel_modulo_clase_aux_id,
	smn_modulos_rf,
	smn_clase_auxiliar_rf,
	rma_idioma,
	rma_usuario,
	rma_fecha_registro,
	rma_hora
)
VALUES
(
	${seq:currval@smn_base.seq_smn_rel_modulo_clase_aux},
	${fld:smn_modulos_rf},
	${fld:smn_clase_auxiliar_rf},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
