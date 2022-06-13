INSERT INTO smn_base.smn_corporaciones
(
	smn_corporaciones_id,
	crp_codigo,
	crp_nombre,
	crp_moneda,
	crp_direccion,
	crp_idioma,
	crp_usuario,
	crp_fecha_registro,
	crp_hora
)
VALUES
(
	${seq:currval@smn_base.seq_smn_corporaciones},
	${fld:crp_codigo},
	${fld:crp_nombre},
	${fld:crp_moneda},
	${fld:crp_direccion},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
