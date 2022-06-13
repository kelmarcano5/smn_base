UPDATE smn_base.smn_centro_costo SET
	cco_codigo=${fld:cco_codigo},
	cco_descripcion_corta=${fld:cco_descripcion_corta},
	cco_descripcion_larga=${fld:cco_descripcion_larga},
	cco_empresa=${fld:cco_empresa},
	cco_sucursal=${fld:cco_sucursal},
	cco_area_servicio=${fld:cco_area_servicio},
	cco_unidad_servicio=${fld:cco_unidad_servicio},
	cco_almacen=${fld:cco_almacen},
	cco_nivel=${fld:cco_nivel},
	cco_idioma='${def:locale}',
	cco_usuario='${def:user}',
	cco_fecha_registro={d '${def:date}'},
	cco_hora='${def:time}'

WHERE
	smn_centro_costo_id=${fld:id}

