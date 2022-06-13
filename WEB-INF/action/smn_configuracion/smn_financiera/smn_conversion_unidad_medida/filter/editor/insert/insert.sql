INSERT INTO smn_base.smn_conversion_unidad_medida
(
	smn_conversion_unidad_medida_id,
	smn_unidad_medida_origen_rf,
	smn_unidad_medida_destino_rf,
	cou_factor_conversion,
	cou_signo_conversion,
	cou_idioma,
	cou_usuario,
	cou_fecha_registro,
	cou_hora
)
VALUES
(
	${seq:currval@smn_base.seq_smn_conversion_unidad_medida},
	${fld:smn_unidad_medida_origen_rf},
	${fld:smn_unidad_medida_destino_rf},
	${fld:cou_factor_conversion},
	${fld:cou_signo_conversion},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
