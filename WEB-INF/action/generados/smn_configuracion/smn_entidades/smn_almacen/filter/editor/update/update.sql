UPDATE smn_base.smn_almacen SET
	alm_codigo=${fld:alm_codigo},
	alm_nombre=${fld:alm_nombre},
	alm_empresa=${fld:alm_empresa},
	alm_unidad_negocio=${fld:alm_unidad_negocio},
	alm_sucursal=${fld:alm_sucursal},
	alm_area_servicio=${fld:alm_area_servicio},
	alm_unidad_servicio=${fld:alm_unidad_servicio},
	alm_idioma='${def:locale}',
	alm_usuario='${def:user}',
	alm_fecha_registro={d '${def:date}'},
	alm_hora='${def:time}'

WHERE
	smn_almacen_id=${fld:id}

