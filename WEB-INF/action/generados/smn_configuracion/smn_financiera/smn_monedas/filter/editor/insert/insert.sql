INSERT INTO smn_base.smn_monedas
(
	smn_monedas_id,
	mon_codigo,
	mon_nombre,
	mon_idioma,
	mon_usuario,
	mon_fecha_registro,
	mon_hora
)
VALUES
(
	${seq:currval@smn_base.seq_smn_monedas},
	${fld:mon_codigo},
	${fld:mon_nombre},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
