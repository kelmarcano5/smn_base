UPDATE smn_base.smn_incrementos SET
	inc_codigo=${fld:inc_codigo},
	inc_descripcion=${fld:inc_descripcion},
	smn_vencimiento_cabecera_id=${fld:smn_vencimiento_cabecera_id},
	inc_apli_cant_precio=${fld:inc_apli_cant_precio},
	inc_monto_ml=${fld:inc_monto_ml},
	inc_monto_ma=${fld:inc_monto_ma},
	inc_porcentaje_base=${fld:inc_porcentaje_base},
	inc_porcentaje_incremento=${fld:inc_porcentaje_incremento},
	inc_estatus=${fld:inc_estatus},
	inc_apli_todos_it=${fld:inc_apli_todos_it},
	inc_apli_todos_se=${fld:inc_apli_todos_se},
	inc_apli_todos_af=${fld:inc_apli_todos_af},
	inc_vigencia={d '${def:date}'},
	inc_idioma='${def:locale}',
	inc_usuario='${def:user}',
	inc_fecha_registro={d '${def:date}'},
	inc_hora='${def:time}'

WHERE
	smn_incrementos_id=${fld:id}

