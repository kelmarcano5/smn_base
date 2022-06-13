INSERT INTO smn_base.smn_tipo_unidad_medida
(
	smn_tipo_unidad_medida_id,
	tum_codigo,
	tum_descripcion,
	tum_fecha_registro
)
VALUES
(
	${seq:nextval@smn_base.seq_smn_tipo_unidad_medida},
	?,
	?,
	{d '${def:date}'}
)
