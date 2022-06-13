INSERT INTO smn_base.smn_clasificacion_abc
(
	smn_clasificacion_abc_id,
	clf_codigo,
	clf_descripcion,
	clf_ponderacion,
	clf_fecha_registro
)
VALUES
(
	${seq:nextval@smn_base.seq_smn_clasificacion_abc},
	?,
	?,
	?,
	{d '${def:date}'}
)
