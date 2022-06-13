select
	smn_base.smn_servicio_traduccion.smn_servicio_traduccion_id,
	${field}
from
	smn_seguridad.s_application,
	smn_seguridad.s_menu,
	smn_seguridad.s_service,
	smn_base.smn_servicio_traduccion
where
	smn_seguridad.s_application.app_id = smn_base.smn_servicio_traduccion.set_app_id 
and
	smn_seguridad.s_menu.menu_id = smn_base.smn_servicio_traduccion.set_menu_id 
and
	smn_seguridad.s_service.service_id = smn_base.smn_servicio_traduccion.set_servicio_id 
and
   	smn_base.smn_servicio_traduccion.set_idioma = '${def:locale}'
and
	smn_base.smn_servicio_traduccion.set_usuario = '${def:user}'
	${filter}
order by 
	smn_base.smn_servicio_traduccion.smn_servicio_traduccion_id desc
	
