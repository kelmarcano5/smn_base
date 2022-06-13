INSERT INTO smn_base.smn_atributo_valor
(
	smn_atributo_valor_id,
	smn_atributo_item_id,
	atv_codigo,
	atv_descripcion,
	atv_fecha_vigencia_desde,
	atv_fecha_vigencia_hasta,
	atv_idioma,
	atv_usuario,
	atv_fecha_registro,
	atv_hora
)
VALUES
(
	${seq:nextval@smn_base.seq_smn_atributo_valor},
	?,
	?,
	?,
	?,
	?,
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
