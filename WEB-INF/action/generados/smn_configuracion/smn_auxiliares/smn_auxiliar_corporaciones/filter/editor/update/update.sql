UPDATE smn_base.smn_auxiliar_corporaciones SET
	tcp_codigo=${fld:tcp_codigo},
	tcp_nombre=${fld:tcp_nombre},
	tcp_auxiliar_unidad_negocio=${fld:tcp_auxiliar_unidad_negocio},
	tcp_moneda=${fld:tcp_moneda},
	tcp_direccion=${fld:tcp_direccion},
	tcp_idioma='${def:locale}',
	tcp_usuario='${def:user}',
	tcp_fecha_registro={d '${def:date}'},
	tcp_hora='${def:time}'

WHERE
	smn_auxiliar_corporaciones_id=${fld:id}

