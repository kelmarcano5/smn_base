INSERT INTO smn_base.smn_tasas_impositivas
(
	smn_tasas_impositivas_id,
	smn_unidades_impositivas_id,
	tim_fecha_vigencia,
	tim_valor,
	tim_idioma,
	tim_usuario,
	tim_fecha_registro,
	tim_hora
)
VALUES
(
	${seq:nextval@smn_base.seq_smn_tasas_impositivas},
	?,
	?,
	?,
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
