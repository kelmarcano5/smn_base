UPDATE smn_base.smn_sucursales SET
	suc_empresa=${fld:suc_empresa},
	suc_codigo=${fld:suc_codigo},
	suc_nombre=${fld:suc_nombre},
	suc_unidad_negocio=${fld:suc_unidad_negocio},
	suc_maneja_area_servicio=${fld:suc_maneja_area_servicio},
	suc_responsable=${fld:suc_responsable},
	suc_direccion=${fld:suc_direccion},
	suc_telefono_fijo=${fld:suc_telefono_fijo},
	suc_telefono_movil=${fld:suc_telefono_movil},
	suc_email=${fld:suc_email},
	suc_idioma='${def:locale}',
	suc_usuario='${def:user}'
WHERE
	smn_base.smn_sucursales.smn_sucursales_id=${fld:id}

