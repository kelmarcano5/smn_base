select
app_alias,
	title,
	description,
	${field}
from
	smn_seguridad.s_application,
	smn_seguridad.s_menu,
	smn_seguridad.s_service,
	smn_base.smn_servicio_traduccion
where
	smn_seguridad.s_application.s_application_id = smn_base.smn_servicio_traduccion.set_app_id and
	smn_seguridad.s_menu.s_menu_id = smn_base.smn_servicio_traduccion.set_menu_id and
	smn_seguridad.s_service.s_service_id = smn_base.smn_servicio_traduccion.set_servicio_id and
