UPDATE smn_base.smn_servicios SET
	svc_codigo=${fld:svc_codigo},
	svc_descripcion=${fld:svc_descripcion},
	svc_clase_auxiliar=${fld:svc_clase_auxiliar},
	svc_tipo_servicio=${fld:svc_tipo_servicio},
	svc_area_servicio=${fld:svc_area_servicio},
	svc_unidad_servicio=${fld:svc_unidad_servicio},
	svc_centro_costo=${fld:svc_centro_costo},
	svc_frecuencia=${fld:svc_frecuencia},
	svc_precio_general=${fld:svc_precio_general},
	svc_inactivo=${fld:svc_inactivo},
	svc_req_honorario=${fld:svc_req_honorario},
	svc_vigencia_desde=${fld:svc_vigencia_desde},
	svc_vigencia_hasta=${fld:svc_vigencia_hasta},
	svc_requisitos=${fld:svc_requisitos},
	svc_trans_general=${fld:svc_trans_general},
	svc_compuesto=${fld:svc_compuesto},
	svc_idioma='${def:locale}',
	svc_usuario='${def:user}',
	svc_fecha_registro={d '${def:date}'},
	svc_hora='${def:time}'

WHERE
	smn_servicios_id=${fld:id}

