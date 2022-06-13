INSERT INTO smn_base.smn_tipo_prestadores_servicios
(
	smn_tipo_prestadores_servicios_id,
	tps_codigo,
	tps_descripcion,
	tps_fecha_registro
)
VALUES
(
	${seq:nextval@smn_base.seq_smn_tipo_prestadores_servicios},
	?,
	?,
	{d '${def:date}'}
)
