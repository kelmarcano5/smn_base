UPDATE smn_base.smn_rel_item_desc_retenc SET
	smn_descuentos_retenciones_id=${fld:smn_descuentos_retenciones_id},
	smn_item_id=${fld:smn_item_id},
	rid_idioma='${def:locale}',
	rid_usuario='${def:user}',
	rid_fecha_registro={d '${def:date}'},
	rid_hora='${def:time}'

WHERE
	smn_rel_item_desc_retenc_id=${fld:id}

