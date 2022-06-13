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
	dyr_idioma,
	dyr_usuario,
	dyr_fecha_registro,
	dyr_hora,
	dyr_apli_todos_it,
	dyr_apli_todos_se,
	dyr_apli_todos_af
)
VALUES
(
	${seq:currval@smn_base.seq_smn_descuentos_retenciones},
	${fld:dyr_codigo},
	${fld:dyr_descripcion},
	${fld:smn_vencimiento_cabecera_id},
	${fld:dyr_apli_cant_precio},
	${fld:dyr_porcentaje_base},
	${fld:dyr_porcentaje_descuento},
	${fld:dyr_estatus},
	${fld:dyr_vigencia},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}',
	${fld:dyr_apli_todos_it},
	${fld:dyr_apli_todos_se},
	${fld:dyr_apli_todos_af}
)