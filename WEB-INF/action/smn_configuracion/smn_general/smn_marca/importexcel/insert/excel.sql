INSERT INTO smn_base.smn_marca
(
	smn_marca_id,
	mar_codigo,
	mar_descripcion,
	mar_fecha_registro
)
VALUES
(
	${seq:nextval@smn_base.seq_smn_marca},
	?,
	?,
	{d '${def:date}'}
)
