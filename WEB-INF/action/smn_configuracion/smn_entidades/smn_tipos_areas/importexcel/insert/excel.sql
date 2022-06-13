INSERT INTO smn_base.smn_tipos_areas
(
	smn_tipos_areas_id,
	tar_codigo,
	tar_descripcion,
	tar_fecha_registro
)
VALUES
(
	${seq:nextval@smn_base.seq_smn_tipos_areas},
	?,
	?,
	{d '${def:date}'}
)
