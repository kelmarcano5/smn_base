UPDATE smn_base.smn_grupos_prestadores SET
	gpp_codigo=${fld:gpp_codigo},
	gpp_descripcion=${fld:gpp_descripcion},
	gpp_area_servicio=${fld:gpp_area_servicio},
	gpp_unidad_servicio=${fld:gpp_unidad_servicio},
	gpp_orden_atencion=${fld:gpp_orden_atencion},
	gpp_estatus=${fld:gpp_estatus},
	gpp_fecha_inicio_estatus=${fld:gpp_fecha_inicio_estatus},
	gpp_fecha_final_estatus=${fld:gpp_fecha_final_estatus},
	gpp_frecuencia=	${fld:gpp_frecuencia},
	gpp_idioma='${def:locale}',
	gpp_usuario='${def:user}',
	gpp_fecha_registro='${def:date}',
	gpp_hora='${def:time}',
	gpp_is_pull=${fld:gpp_is_pull}
WHERE
	smn_base.smn_grupos_prestadores.smn_grupos_prestadores_id=${fld:id}

