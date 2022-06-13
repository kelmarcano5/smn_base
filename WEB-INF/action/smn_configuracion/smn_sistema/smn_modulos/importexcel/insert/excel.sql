INSERT INTO smn_base.smn_modulos
(
	smn_modulos_id,
	mod_empresa,
	mod_codigo,
	mod_nombre,
	smn_app_rf,
	mod_ruta_anexado,
	mod_idioma,
	mod_usuario,
	mod_fecha_registro,
	mod_hora
)
VALUES
(
	${seq:nextval@smn_base.seq_smn_modulos},
	?,
	?,
	?,
	?,
	?,
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
