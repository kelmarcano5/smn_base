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
	${seq:nextval@smn_base.seq_smn_rel_item_desc_retenc},
	?,
	?,
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
