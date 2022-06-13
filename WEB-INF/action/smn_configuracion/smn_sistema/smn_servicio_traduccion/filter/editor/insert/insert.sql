INSERT INTO smn_base.smn_servicio_traduccion
(
	smn_servicio_traduccion_id,
	set_app_id,
	set_menu_id,
	set_servicio_id,
	set_servicio,
	set_locale,
	set_idioma,
	set_usuario,
	set_fecha_registro,
	set_hora
)
VALUES
(
	${seq:currval@smn_base.seq_smn_servicio_traduccion},
	${fld:set_app_id},
	${fld:set_menu_id},
	${fld:set_servicio_id},
	${fld:set_servicio},
	${fld:set_locale},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
