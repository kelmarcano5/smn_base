UPDATE smn_base.smn_contrato_base SET
	ctr_codigo=${fld:ctr_codigo},
	ctr_nombre=${fld:ctr_nombre},
	ctr_transaccion_rf=${fld:ctr_transaccion_rf},
	ctr_tipo=${fld:ctr_tipo},
	ctr_consecutivo=${fld:ctr_consecutivo},
	ctr_fecha_inicio=${fld:ctr_fecha_inicio},
	ctr_fec_registro=${fld:ctr_fec_registro},
	ctr_fecha_vencimiento=${fld:ctr_fecha_vencimiento},
	ctr_dias_renovacion=${fld:ctr_dias_renovacion},
	ctr_frecuencia_pago_dias=${fld:ctr_frecuencia_pago_dias},
	ctr_moneda_rf=${fld:ctr_moneda_rf},
	ctr_monto_otra_moneda=${fld:ctr_monto_otra_moneda},
	ctr_corporacion_rf=${fld:ctr_corporacion_rf},
	ctr_empresa_rf=${fld:ctr_empresa_rf},
	ctr_sucursal_rf=${fld:ctr_sucursal_rf},
	ctr_area_servicio_rf=${fld:ctr_area_servicio_rf},
	ctr_unidad_servicio_rf=${fld:ctr_unidad_servicio_rf},
	ctr_centro_costo_rf=${fld:ctr_centro_costo_rf},
	ctr_observaciones=${fld:ctr_observaciones},
	ctr_vigencia=${fld:ctr_vigencia},
	ctr_idioma='${def:locale}',
	ctr_usuario='${def:user}',
	ctr_fecha_registro={d '${def:date}'},
	ctr_hora='${def:time}'

WHERE
	smn_contrato_base_id=${fld:id}

