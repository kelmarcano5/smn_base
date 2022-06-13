INSERT INTO smn_base.smn_item
(
	smn_item_id,
	itm_codigo,
	itm_nombre,
	itm_idioma,
	itm_usuario,
	itm_fecha_registro,
	itm_hora
)
VALUES
(
	${seq:currval@smn_base.seq_smn_item},
	${fld:itm_codigo},
	${fld:itm_nombre},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
