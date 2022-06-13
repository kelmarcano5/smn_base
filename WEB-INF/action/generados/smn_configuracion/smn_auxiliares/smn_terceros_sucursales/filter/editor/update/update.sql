UPDATE smn_base.smn_terceros_sucursales SET
	smn_terceros_id=${fld:smn_terceros_id},
	trs_codigo=${fld:trs_codigo},
	trs_nombre=${fld:trs_nombre},
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
	smn_terceros_sucursales_id=${fld:id}

