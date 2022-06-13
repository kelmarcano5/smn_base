UPDATE smn_base.smn_rel_afijo_desc_retenc SET
	smn_descuentos_retenciones_id=${fld:smn_descuentos_retenciones_id},
	smn_afijo_id=${fld:smn_afijo_id},
	rad_idioma='${def:locale}',
	rad_usuario='${def:user}',
	rad_fecha_registro={d '${def:date}'},
	rad_hora='${def:time}'

WHERE
	smn_rel_afijo_desc_retenc_id=${fld:id}

