INSERT INTO smn_base.smn_sub_tipo_gasto
(
	smn_sub_tipo_gasto_id,
	stg_codigo,
	stg_descripcion,
	smn_tipo_gasto_id,
	stg_fecha_registro
)
VALUES
(
	${seq:nextval@smn_base.seq_smn_sub_tipo_gasto},
	?,
	?,
	?,
	{d '${def:date}'}
)
