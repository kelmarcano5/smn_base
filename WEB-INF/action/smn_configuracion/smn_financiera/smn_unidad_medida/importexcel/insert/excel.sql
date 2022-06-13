INSERT INTO smn_base.smn_unidad_medida
(
	smn_unidad_medida_id,
	unm_codigo,
	unm_descripcion,
	smn_tipo_unidad_medida_rf,
	unm_fecha_registro
)
VALUES
(
	${seq:nextval@smn_base.seq_smn_unidad_medida},
	?,
	?,
	?,
	{d '${def:date}'}
)
