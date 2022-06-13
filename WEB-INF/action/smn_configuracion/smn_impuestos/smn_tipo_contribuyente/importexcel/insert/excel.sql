INSERT INTO smn_base.smn_tipo_contribuyente
(
	smn_tipo_contribuyente_id,
	tco_codigo,
	tco_descripcion,
	tco_estatus,
	tco_fecha_registro
)
VALUES
(
	${seq:nextval@smn_base.seq_smn_tipo_contribuyente},
	?,
	?,
	?,
	{d '${def:date}'}
)
