INSERT INTO smn_base.smn_conversion_unidad_medida
(
	smn_conversion_unidad_medida_id,
	smn_unidad_medida_origen_rf,
	smn_unidad_medida_destino_rf,
	cou_factor_conversion,
	cou_idioma,
	cou_usuario,
	cou_fecha_registro,
	cou_hora
)
VALUES
(
	${seq:nextval@smn_base.seq_smn_conversion_unidad_medida},
	?,
	?,
	?,
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
