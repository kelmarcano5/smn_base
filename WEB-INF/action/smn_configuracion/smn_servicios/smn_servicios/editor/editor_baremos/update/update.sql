UPDATE smn_base.smn_baremos_detalle SET
	smn_baremos_id=${fld:smn_baremos_id},
	smn_servicios_rf=${fld:smn_servicios_rf},
	bad_tipo_componente=${fld:bad_tipo_componente},
	smn_clase_auxiliar_rf=${fld:smn_clase_auxiliar_rf},
	smn_item_rf=${fld:smn_item_rf},
	smn_almacen_rf=${fld:smn_almacen_rf},
	bad_cantidad=${fld:bad_cantidad},
	bad_precio_moneda_local=${fld:bad_precio_moneda_local},
	smn_moneda_rf=${fld:smn_moneda_rf},
	bad_precio_moneda_alterna=${fld:bad_precio_moneda_alterna},
	smn_descuento_rf=${fld:smn_descuento_rf},
	bad_estatus=${fld:bad_estatus},
	bad_idioma='${def:locale}',
	bad_usuario='${def:user}',
	bad_fecha_registro={d '${def:date}'},
	bad_hora='${def:time}'

WHERE
	smn_baremos_detalle_id=${fld:id}

