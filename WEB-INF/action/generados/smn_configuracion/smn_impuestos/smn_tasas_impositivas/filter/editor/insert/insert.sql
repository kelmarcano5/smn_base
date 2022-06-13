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
	${seq:currval@smn_base.seq_smn_tasas_impositivas},
	${fld:smn_unidades_impositivas_id},
	${fld:tim_fecha_vigencia},
	${fld:tim_valor},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
