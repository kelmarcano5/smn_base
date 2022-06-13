INSERT INTO smn_base.smn_modelo
(
	smn_modelo_id,
	mod_codigo,
	mod_descripcion,
	mod_idioma,
	mod_usuario,
	mod_fecha_registro,
	mod_hora
)
VALUES
(
	${seq:currval@smn_base.seq_smn_modelo},
	${fld:mod_codigo},
	${fld:mod_descripcion},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
