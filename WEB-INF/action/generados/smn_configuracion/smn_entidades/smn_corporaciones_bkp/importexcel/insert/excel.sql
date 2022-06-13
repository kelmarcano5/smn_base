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
	${seq:nextval@smn_base.seq_smn_corporaciones},
	?,
	?,
	?,
	?,
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
