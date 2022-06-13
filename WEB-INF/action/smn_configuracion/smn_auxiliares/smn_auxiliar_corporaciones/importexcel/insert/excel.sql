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
	${seq:nextval@smn_base.seq_smn_auxiliar_corporaciones},
	?,
	?,
	?,
	?,
	?,
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
