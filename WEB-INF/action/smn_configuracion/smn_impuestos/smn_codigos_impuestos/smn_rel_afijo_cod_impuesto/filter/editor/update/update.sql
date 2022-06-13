UPDATE smn_base.smn_rel_afijo_cod_impuesto SET
	smn_afijo_id=${fld:smn_afijo_id},
	smn_codigos_impuestos_id=${fld:smn_codigos_impuestos_id},
	rai_idioma='${def:locale}',
	rai_usuario='${def:user}',
	rai_fecha_registro={d '${def:date}'},
	rai_hora='${def:time}'

WHERE
	smn_rel_afijo_cod_impuesto_id=${fld:id}

