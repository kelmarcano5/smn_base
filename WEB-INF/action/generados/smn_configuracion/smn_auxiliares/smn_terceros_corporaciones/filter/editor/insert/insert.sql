INSERT INTO smn_base.smn_terceros_corporaciones
(
	smn_terceros_corporaciones_id,
	smn_terceros_id,
	tcp_codigo,
	tcp_nombre,
	tcp_moneda,
	tcp_direccion,
	tcp_idioma,
	tcp_usuario,
	tcp_fecha_registro,
	tcp_hora
)
VALUES
(
	${seq:currval@smn_base.seq_smn_terceros_corporaciones},
	${fld:smn_terceros_id},
	${fld:tcp_codigo},
	${fld:tcp_nombre},
	${fld:tcp_moneda},
	${fld:tcp_direccion},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
