UPDATE smn_base.smn_rel_item_cod_impuesto SET
	smn_item_id=${fld:smn_item_id},
	smn_codigos_impuestos_id=${fld:smn_codigos_impuestos_id},
	rii_idioma='${def:locale}',
	rii_usuario='${def:user}',
	rii_fecha_registro={d '${def:date}'},
	rii_hora='${def:time}'

WHERE
	smn_rel_item_cod_impuesto_id=${fld:id}

