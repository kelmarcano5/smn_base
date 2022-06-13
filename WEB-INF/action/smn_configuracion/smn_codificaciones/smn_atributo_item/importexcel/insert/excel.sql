INSERT INTO smn_base.smn_atributo_item
(
	smn_atributo_item_id,
	ati_codigo,
	ati_nombre,
	ati_fecha_vigencia_desde,
	ati_fecha_vigencia_hasta,
	ati_idioma,
	ati_usuario,
	ati_fecha_registro,
	ati_hora
)
VALUES
(
	${seq:nextval@smn_base.seq_smn_atributo_item},
	?,
	?,
	?,
	?,
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
