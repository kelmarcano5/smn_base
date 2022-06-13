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
	${seq:currval@smn_base.seq_smn_menu_traduccion},
	${fld:mnt_app_id},
	${fld:mnt_menu_id},
	${fld:mnt_title},
	${fld:mnt_locale},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
