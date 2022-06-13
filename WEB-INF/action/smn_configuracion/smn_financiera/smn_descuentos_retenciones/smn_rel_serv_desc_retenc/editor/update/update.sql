UPDATE smn_base.smn_rel_serv_desc_retenc SET
	smn_descuentos_retenciones_id=${fld:smn_descuentos_retenciones_id},
	smn_servicios_id=${fld:smn_servicios_id},
	rsd_idioma='${def:locale}',
	rsd_usuario='${def:user}',
	rsd_fecha_registro={d '${def:date}'},
	rsd_hora='${def:time}'

WHERE
	smn_rel_serv_desc_retenc_id=${fld:id}

