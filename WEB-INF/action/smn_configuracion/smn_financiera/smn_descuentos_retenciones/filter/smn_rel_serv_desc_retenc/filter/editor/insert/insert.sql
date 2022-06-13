INSERT INTO smn_base.smn_rel_serv_desc_retenc
(
	smn_rel_serv_desc_retenc_id,
	smn_descuentos_retenciones_id,
	smn_servicios_id,
	rsd_idioma,
	rsd_usuario,
	rsd_fecha_registro,
	rsd_hora
)
VALUES
(
	${seq:currval@smn_base.seq_smn_rel_serv_desc_retenc},
	${fld:smn_descuentos_retenciones_id},
	${fld:smn_servicios_id},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
