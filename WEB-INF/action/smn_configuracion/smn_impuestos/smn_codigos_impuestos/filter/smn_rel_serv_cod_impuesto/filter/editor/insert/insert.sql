INSERT INTO smn_base.smn_rel_serv_cod_impuesto
(
	smn_rel_serv_cod_impuesto_id,
	smn_codigos_impuestos_id,
	smn_servicios_id,
	rsi_idioma,
	rsi_usuario,
	rsi_fecha_registro,
	rsi_hora
)
VALUES
(
	${seq:currval@smn_base.seq_smn_rel_serv_cod_impuesto},
	${fld:smn_codigos_impuestos_id},
	${fld:smn_servicios_id},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
