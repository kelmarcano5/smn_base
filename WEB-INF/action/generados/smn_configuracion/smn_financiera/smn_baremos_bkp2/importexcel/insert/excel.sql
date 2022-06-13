INSERT INTO smn_base.smn_baremos
(
	smn_baremos_id,
	bar_codigo,
	bar_descripcion,
	bar_entidad,
	bar_tipo,
	bar_vigencia_desde,
	bar_vigencia_hasta,
	bar_idioma,
	bar_usuario,
	bar_fecha_registro,
	bar_hora
)
VALUES
(
	${seq:nextval@smn_base.seq_smn_baremos},
	?,
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
