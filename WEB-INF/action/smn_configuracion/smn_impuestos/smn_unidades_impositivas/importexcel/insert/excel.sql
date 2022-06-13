INSERT INTO smn_base.smn_unidades_impositivas
(
	smn_unidades_impositivas_id,
	uim_codigo,
	uim_descripcion,
	uim_moneda_referencia,
	uim_idioma,
	uim_usuario,
	uim_fecha_registro,
	uim_hora
)
VALUES
(
	${seq:nextval@smn_base.seq_smn_unidades_impositivas},
	?,
	?,
	?,
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
