INSERT INTO smn_base.smn_panel
(
	smn_panel_id,
	pan_service_description,
	pan_service_path,
	pan_icon_path,
	pan_app_id,
	pan_role_id,
	pan_orden,
	pan_idioma,
	pan_usuario,
	pan_fecha_registro,
	pan_hora
)
VALUES
(
	${seq:nextval@smn_base.seq_smn_panel},
	?,
	?,
	?,
	?,
	?,
	?,
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	{d '${def:date}'}
)
