INSERT INTO smn_base.smn_clase_auxiliar
(
	smn_clase_auxiliar_id,
	cla_codigo,
	cla_nombre,
	cla_modulo,
	cla_naturaleza,
	cla_idioma,
	cla_usuario,
	cla_fecha_registro,
	cla_hora
)
VALUES
(
	${seq:currval@smn_base.seq_smn_clase_auxiliar},
	${fld:cla_codigo},
	${fld:cla_nombre},
	${fld:cla_modulo},
	${fld:cla_naturaleza},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
