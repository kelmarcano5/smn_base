UPDATE smn_base.smn_prestadores_servicios SET
	prs_codigo=${fld:prs_codigo},
	prs_descripcion=${fld:prs_descripcion},
	prs_area_servicio=${fld:prs_area_servicio},
	prs_unidad_servicio=${fld:prs_unidad_servicio},
	prs_clase_auxiliar=${fld:prs_clase_auxiliar},
	prs_auxiliar=${fld:prs_auxiliar},
	prs_orden_atencion=${fld:prs_orden_atencion},
	prs_estatus=${fld:prs_estatus},
	prs_fecha_inicio_estatus=${fld:prs_fecha_inicio_estatus},
	prs_fecha_final_estatus=${fld:prs_fecha_final_estatus},
	prs_frecuencia=${fld:prs_frecuencia},
	prs_idioma='${def:locale}',
	prs_usuario='${def:user}',
	prs_fecha_registro='${def:date}',
	prs_hora='${def:time}'
WHERE
	smn_base.smn_prestadores_servicios.smn_prestadores_servicios_id=${fld:id}

