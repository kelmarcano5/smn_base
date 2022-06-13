UPDATE smn_base.smn_terceros_unidades_negocios SET
	smn_terceros_id=${fld:smn_terceros_id},
	tun_codigo=${fld:tun_codigo},
	tun_nombre=${fld:tun_nombre},
	tun_responsable=${fld:tun_responsable},
	tun_direccion=${fld:tun_direccion},
	tun_telefono_fijo=${fld:tun_telefono_fijo},
	tun_telefono_movil=${fld:tun_telefono_movil},
	tun_email=${fld:tun_email},
	tun_idioma='${def:locale}',
	tun_usuario='${def:user}',
	tun_fecha_registro={d '${def:date}'},
	tun_hora='${def:time}'

WHERE
	smn_terceros_unidades_negocios_id=${fld:id}

