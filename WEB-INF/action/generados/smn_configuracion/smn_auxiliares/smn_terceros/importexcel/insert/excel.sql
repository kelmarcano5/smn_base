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
	${seq:nextval@smn_base.seq_smn_terceros},
	?,
	?,
	?,
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
