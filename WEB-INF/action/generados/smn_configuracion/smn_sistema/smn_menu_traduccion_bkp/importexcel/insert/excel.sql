INSERT INTO smn_base.smn_menu_traduccion
(
	smn_menu_traduccion_id,
	mnt_app_id,
	mnt_menu_id,
	mnt_title,
	mnt_locale
)
VALUES
(
	${seq:nextval@smn_base.seq_smn_menu_traduccion},
	?,
	?,
	?,
	?
)
