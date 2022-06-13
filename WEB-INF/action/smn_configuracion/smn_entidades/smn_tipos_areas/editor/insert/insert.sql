INSERT INTO smn_base.smn_tipos_areas
(
	smn_tipos_areas_id,
	tar_codigo,
	tar_descripcion,
	tar_idioma,
	tar_usuario,
	tar_fecha_registro,
	tar_hora
)
VALUES
(
	${seq:currval@smn_base.seq_smn_tipos_areas},
	${fld:tar_codigo},
	${fld:tar_descripcion},
	'${def:locale}',
	{d '${def:date}'},
	{d '${def:date}'},
	'${def:time}'
)
