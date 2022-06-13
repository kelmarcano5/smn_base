UPDATE smn_base.smn_terceros_corporaciones SET
	smn_terceros_id=${fld:smn_terceros_id},
	tcp_codigo=${fld:tcp_codigo},
	tcp_nombre=${fld:tcp_nombre},
	tcp_moneda=${fld:tcp_moneda},
	tcp_direccion=${fld:tcp_direccion},
	tcp_idioma='${def:locale}',
	tcp_usuario='${def:user}',
	tcp_fecha_registro={d '${def:date}'},
	tcp_hora='${def:time}'

WHERE
	smn_terceros_corporaciones_id=${fld:id}

