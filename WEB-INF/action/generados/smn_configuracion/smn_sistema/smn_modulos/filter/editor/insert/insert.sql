INSERT INTO smn_base.smn_modulos
(
	smn_modulos_id,
	mod_empresa,
	mod_codigo,
	mod_nombre,
	mod_idioma,
	mod_usuario,
	mod_fecha_registro,
	mod_hora
)
VALUES
(
	${seq:currval@smn_base.seq_smn_modulos},
	${fld:mod_empresa},
	${fld:mod_codigo},
	${fld:mod_nombre},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
