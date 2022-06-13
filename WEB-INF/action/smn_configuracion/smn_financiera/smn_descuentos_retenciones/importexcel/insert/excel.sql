INSERT INTO smn_base.smn_descuentos_retenciones
(
	smn_descuentos_retenciones_id,
	dyr_codigo,
	dyr_descripcion,
	smn_vencimiento_cabecera_id,
	dyr_apli_cant_precio,
	dyr_porcentaje_base,
	dyr_porcentaje_descuento,
	dyr_estatus,
	dyr_vigencia,
	dyr_fecha_registro
)
VALUES
(
	${seq:nextval@smn_base.seq_smn_descuentos_retenciones},
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	{d '${def:date}'}
)
