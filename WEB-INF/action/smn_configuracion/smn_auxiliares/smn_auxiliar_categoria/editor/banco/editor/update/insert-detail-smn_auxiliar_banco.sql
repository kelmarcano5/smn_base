INSERT INTO smn_base.smn_auxiliar_banco
(
	smn_auxiliar_banco_id,
	aab_codigo,
	aab_descripcion,
	smn_auxiliar_categoria_id,
	aab_idioma,
	aab_usuario,
	aab_fecha_registro,
	aab_hora
)
VALUES
(
	${seq:nextval@smn_base.seq_smn_auxiliar_banco},
	${fld:aab_codigo2},
	${fld:aab_descripcion2},
	${fld:id},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
