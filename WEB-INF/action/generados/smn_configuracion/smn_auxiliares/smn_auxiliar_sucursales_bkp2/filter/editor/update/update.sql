UPDATE smn_base.smn_auxiliar_sucursales SET
	trs_codigo=${fld:trs_codigo},
	trs_nombre=${fld:trs_nombre},
	trs_auxiliar_unidad_negocio=${fld:trs_auxiliar_unidad_negocio},
	trs_responsable=${fld:trs_responsable},
	trs_direccion=${fld:trs_direccion},
	trs_telefono_fijo=${fld:trs_telefono_fijo},
	trs_telefono_movil=${fld:trs_telefono_movil},
	trs_email=${fld:trs_email},
	trs_idioma='${def:locale}',
	trs_usuario='${def:user}',
	trs_fecha_registro={d '${def:date}'},
	trs_hora='${def:time}'

WHERE
	smn_auxiliar_sucursales_id=${fld:id}

