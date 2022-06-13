UPDATE smn_base.smn_descuentos_retenciones SET
	dyr_codigo=${fld:dyr_codigo},
	dyr_descripcion=${fld:dyr_descripcion},
	smn_vencimiento_cabecera_id=${fld:smn_vencimiento_cabecera_id},
	dyr_apli_cant_precio=${fld:dyr_apli_cant_precio},
	dyr_porcentaje_base=${fld:dyr_porcentaje_base},
	dyr_porcentaje_descuento=${fld:dyr_porcentaje_descuento},
	dyr_estatus=${fld:dyr_estatus},
	dyr_vigencia=${fld:dyr_vigencia},
	dyr_idioma='${def:locale}',
	dyr_usuario='${def:user}',
	dyr_fecha_registro={d '${def:date}'},
	dyr_hora='${def:time}',
	dyr_apli_todos_it=${fld:dyr_apli_todos_it},
	dyr_apli_todos_se=${fld:dyr_apli_todos_se},
	dyr_apli_todos_af=${fld:dyr_apli_todos_af}

WHERE
	smn_descuentos_retenciones_id=${fld:id}

