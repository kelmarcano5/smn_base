INSERT INTO smn_base.smn_tipo_gasto
(
	smn_tipo_gasto_id,
	tig_codigo,
	tig_descripcion,
	tig_fecha_registro
)
VALUES
(
	${seq:nextval@smn_base.seq_smn_tipo_gasto},
	?,
	?,
	{d '${def:date}'}
)
