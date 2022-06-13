INSERT INTO smn_base.smn_rel_item_cod_impuesto
(
	smn_rel_item_cod_impuesto_id,
	smn_item_id,
	smn_codigos_impuestos_id,
	rii_idioma,
	rii_usuario,
	rii_fecha_registro,
	rii_hora
)
VALUES
(
	${seq:nextval@smn_base.seq_smn_rel_item_cod_impuesto},
	?,
	?,
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
