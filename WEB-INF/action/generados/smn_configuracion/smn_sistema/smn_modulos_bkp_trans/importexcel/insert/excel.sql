INSERT INTO smn_base.smn_modulos
(
	smn_modulos_id,
	smn_transaccion_general_id,
	smn_entidades_id,
	smn_app_id,
	mod_codigo,
	mod_nombre,
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
