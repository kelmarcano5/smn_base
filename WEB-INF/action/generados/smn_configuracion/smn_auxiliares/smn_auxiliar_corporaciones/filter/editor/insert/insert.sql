INSERT INTO smn_base.smn_auxiliar_corporaciones
(
	smn_auxiliar_corporaciones_id,
	tcp_codigo,
	tcp_nombre,
	tcp_auxiliar_unidad_negocio,
	tcp_moneda,
	tcp_direccion,
	tcp_idioma,
	tcp_usuario,
	tcp_fecha_registro,
	tcp_hora
)
VALUES
(
	${seq:currval@smn_base.seq_smn_auxiliar_corporaciones},
	${fld:tcp_codigo},
	${fld:tcp_nombre},
	${fld:tcp_auxiliar_unidad_negocio},
	${fld:tcp_moneda},
	${fld:tcp_direccion},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
