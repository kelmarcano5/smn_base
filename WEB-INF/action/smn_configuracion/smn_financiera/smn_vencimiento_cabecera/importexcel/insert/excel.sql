INSERT INTO smn_base.smn_vencimiento_cabecera
(
	smn_vencimiento_cabecera_id,
	tve_codigo,
	tve_descripcion,
	tve_estatus,
	tve_vigencia,
	tve_fecha_registro
)
VALUES
(
	${seq:nextval@smn_base.seq_smn_vencimiento_cabecera},
	?,
	?,
	?,
	?,
	{d '${def:date}'}
)
