UPDATE smn_base.smn_sucursales SET
	smn_entidades_id=${fld:smn_entidades_id},
	suc_codigo=${fld:suc_codigo},
	suc_nombre=${fld:suc_nombre},
	suc_responsable=${fld:suc_responsable},
	suc_direccion=${fld:suc_direccion},
	suc_telefono_fijo=${fld:suc_telefono_fijo},
	suc_telefono_movil=${fld:suc_telefono_movil},
	suc_email=${fld:suc_email},
	suc_idioma='${def:locale}',
	suc_usuario='${def:user}',
	suc_fecha_registro={d '${def:date}'},
	suc_hora='${def:time}'

WHERE
	smn_sucursales_id=${fld:id}

