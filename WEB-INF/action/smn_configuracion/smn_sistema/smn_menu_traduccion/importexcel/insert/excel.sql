INSERT INTO smn_base.smn_menu_traduccion
(
	smn_menu_traduccion_id,
	mnt_app_id,
	mnt_menu_id,
	mnt_title,
	mnt_locale,
	mnt_idioma,
	mnt_usuario,
	mnt_fecha_registro,
	mnt_hora
)
VALUES
(
	${seq:nextval@smn_base.seq_smn_menu_traduccion},
	?,
	?,
	?,
	?,
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
