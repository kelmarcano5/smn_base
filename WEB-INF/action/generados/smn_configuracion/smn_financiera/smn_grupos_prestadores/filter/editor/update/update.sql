UPDATE smn_base.smn_grupos_prestadores SET
	gpp_codigo=${fld:gpp_codigo},
	gpp_descripcion=${fld:gpp_descripcion},
	gpp_area_servicio=${fld:gpp_area_servicio},
	gpp_unidad_servicio=${fld:gpp_unidad_servicio},
	gpp_orden_atencion=${fld:gpp_orden_atencion},
	gpp_idioma='${def:locale}',
	gpp_usuario='${def:user}',
	gpp_fecha_registro={d '${def:date}'},
	gpp_hora='${def:time}'

WHERE
	smn_grupos_prestadores_id=${fld:id}

