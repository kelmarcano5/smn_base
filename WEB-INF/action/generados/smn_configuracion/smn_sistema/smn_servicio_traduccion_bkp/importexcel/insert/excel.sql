INSERT INTO smn_base.smn_servicio_traduccion
(
	smn_servicio_traduccion_id,
	set_app_id,
	set_menu_id,
	set_servicio_id,
	set_servicio,
	set_locale
)
VALUES
(
	${seq:nextval@smn_base.seq_smn_servicio_traduccion},
	?,
	?,
	?,
	?,
	?
)
