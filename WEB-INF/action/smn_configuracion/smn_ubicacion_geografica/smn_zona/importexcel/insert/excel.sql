INSERT INTO smn_base.smn_zona
(
	smn_zona_id,
	zon_codigo,
	zon_descripcion,
	zon_estatus,
	zon_fecha_vigencia,
	zon_fecha_registro
)
VALUES
(
	${seq:nextval@smn_base.seq_smn_zona},
	?,
	?,
	?,
	'${def:time}',
	{d '${def:date}'}
)
