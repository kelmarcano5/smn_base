INSERT INTO smn_base.smn_terceros
(
	smn_terceros_id,
	ter_auxiliar_categoria,
	ter_descripcion_corta,
	ter_descripcion_larga,
	ter_idioma,
	ter_usuario,
	ter_fecha_registro,
	ter_hora
)
VALUES
(
	${seq:currval@smn_base.seq_smn_terceros},
	${fld:ter_auxiliar_categoria},
	${fld:ter_descripcion_corta},
	${fld:ter_descripcion_larga},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
