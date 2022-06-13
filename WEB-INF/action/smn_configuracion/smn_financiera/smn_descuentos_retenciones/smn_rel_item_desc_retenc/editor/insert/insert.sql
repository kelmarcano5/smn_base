INSERT INTO smn_base.smn_rel_item_desc_retenc
(
	smn_rel_item_desc_retenc_id,
	smn_descuentos_retenciones_id,
	smn_item_id,
	rid_idioma,
	rid_usuario,
	rid_fecha_registro,
	rid_hora
)
VALUES
(
	${seq:currval@smn_base.seq_smn_rel_item_desc_retenc},
	${fld:smn_descuentos_retenciones_id},
	${fld:smn_item_id},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
