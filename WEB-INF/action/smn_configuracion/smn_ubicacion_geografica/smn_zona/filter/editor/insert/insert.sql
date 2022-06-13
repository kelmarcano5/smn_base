INSERT INTO smn_base.smn_zona
(
	smn_zona_id,
	zon_codigo,
	zon_descripcion,
	zon_estatus,
	zon_fecha_vigencia,
	zon_idioma,
	zon_usuario,
	zon_fecha_registro,
	zon_hora
)
VALUES
(
	${seq:currval@smn_base.seq_smn_zona},
	${fld:zon_codigo},
	${fld:zon_descripcion},
	${fld:zon_estatus},
	'${def:time}',
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
