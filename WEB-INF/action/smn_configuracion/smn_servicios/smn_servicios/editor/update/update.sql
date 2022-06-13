UPDATE smn_base.smn_servicios SET
	svc_codigo=${fld:svc_codigo},
	svc_descripcion=${fld:svc_descripcion},
	smn_tipo_servicio_rf=${fld:smn_tipo_servicio_rf},
	svc_frecuencia=${fld:svc_frecuencia},
	smn_unidad_medida_rf=${fld:smn_unidad_medida_rf},
	smn_precio_moneda_local=${fld:smn_precio_moneda_local},
	smn_moneda_rf=${fld:smn_moneda_rf},
	smn_precio_moneda_alterna=${fld:smn_precio_moneda_alterna},
	smn_descuento_rf=${fld:smn_descuento_rf},
	svc_monto_desc_ml=${fld:svc_monto_desc_ml},
	svc_monto_desc_ma=${fld:svc_monto_desc_ma},
	svr_precio_neto=${fld:svr_precio_neto},
	svc_precio_neto_ma=${fld:svc_precio_neto_ma},
	svc_req_prestador=${fld:svc_req_prestador},
	smn_clase_auxiliar_rf=${fld:smn_clase_auxiliar_rf},
	svc_requisitos=${fld:svc_requisitos},
	svc_vigencia_desde=${fld:svc_vigencia_desde},
	svc_vigencia_hasta=${fld:svc_vigencia_hasta},
	smn_documento_general_rf=${fld:smn_documento_general_rf},
	svc_inactivo=${fld:svc_inactivo},
	svc_idioma='${def:locale}',
	svc_usuario='${def:user}',
	svc_fecha_registro={d '${def:date}'},
	svc_hora='${def:time}',
	smn_grupo_titulo_impresion_rf=${fld:smn_grupo_titulo_impresion_rf},
	smn_baremos_id=${fld:smn_baremos_id}

WHERE
	smn_servicios_id=${fld:id}

