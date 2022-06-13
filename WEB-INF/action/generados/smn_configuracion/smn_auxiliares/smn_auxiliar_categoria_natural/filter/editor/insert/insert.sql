INSERT INTO smn_base.smn_auxiliar_categoria
(
	smn_auxiliar_categoria_id,
	aca_codigo,
	aca_descripcion,
	aca_clase_auxiliar,
	aca_tipo_persona,
	aca_idioma,
	aca_usuario,
	aca_fecha_registro,
	aca_hora
)
VALUES
(
	${seq:currval@smn_base.seq_smn_auxiliar_categoria},
	${fld:aca_codigo},
	${fld:aca_descripcion},
	${fld:aca_clase_auxiliar},
	${fld:aca_tipo_persona},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
