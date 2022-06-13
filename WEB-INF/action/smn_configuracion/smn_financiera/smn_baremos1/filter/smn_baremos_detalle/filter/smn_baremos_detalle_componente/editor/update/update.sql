UPDATE smn_base.smn_baremos_detalle_componente SET
	smn_baremos_detalle_id=${fld:smn_baremos_detalle_id},
	smn_tipo_compuesto_rf=${fld:smn_tipo_compuesto_rf},
	smn_componente_rf=${fld:smn_componente_rf},
	smn_almacen_rf=${fld:smn_almacen_rf},
	smn_item_rf=${fld:smn_item_rf},
	smn_forma_calculo_rf=${fld:smn_forma_calculo_rf},
	smn_porcentaje_rf=${fld:smn_porcentaje_rf},
	bdc_cantidad=${fld:bdc_cantidad},
	bdc_precio_ml=${fld:bdc_precio_ml},
	bdc_monto_ml=${fld:bdc_monto_ml},
	smn_moneda_rf=${fld:smn_moneda_rf},
	bdc_precio_ma=${fld:bdc_precio_ma},
	bdc_monto_ma=${fld:bdc_monto_ma},
	bdc_idioma='${def:locale}',
	bdc_usuario='${def:user}',
	bdc_fecha_registro={d '${def:date}'},
	bdc_hora='${def:time}'

WHERE
	smn_baremos_detalle_componente_id=${fld:id}

