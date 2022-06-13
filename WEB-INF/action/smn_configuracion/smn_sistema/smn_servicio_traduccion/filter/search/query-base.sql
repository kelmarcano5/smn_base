select	
	smn_seguridad.s_application.app_alias,
	smn_seguridad.s_menu.title,
	smn_seguridad.s_service.description,
	case
		when smn_base.smn_servicio_traduccion.set_locale='es' then '${lbl:b_spanish}'
		when smn_base.smn_servicio_traduccion.set_locale='en' then '${lbl:b_english}'
		when smn_base.smn_servicio_traduccion.set_locale='fr' then '${lbl:b_french}'
		when smn_base.smn_servicio_traduccion.set_locale='de' then '${lbl:b_germany}'
		when smn_base.smn_servicio_traduccion.set_locale='pt' then '${lbl:b_portuguese}'
		when smn_base.smn_servicio_traduccion.set_locale='it' then '${lbl:b_italian}'
	end as set_locale_combo,
	smn_base.smn_servicio_traduccion.set_app_id,
	smn_base.smn_servicio_traduccion.set_menu_id,
	smn_base.smn_servicio_traduccion.set_servicio_id,
	smn_base.smn_servicio_traduccion.set_servicio,
	smn_base.smn_servicio_traduccion.set_locale,
	smn_base.smn_servicio_traduccion.set_fecha_registro,
	smn_base.smn_servicio_traduccion.smn_servicio_traduccion_id
from
	smn_seguridad.s_application,
	smn_seguridad.s_menu,
	smn_seguridad.s_service,
	smn_base.smn_servicio_traduccion
where
	smn_base.smn_servicio_traduccion.smn_servicio_traduccion_id is not null	
and
	smn_base.smn_servicio_traduccion.set_app_id=smn_seguridad.s_application.app_id
and
	smn_base.smn_servicio_traduccion.set_menu_id=smn_seguridad.s_menu.menu_id
and
	smn_base.smn_servicio_traduccion.set_servicio_id=smn_seguridad.s_service.service_id
and
   	smn_base.smn_servicio_traduccion.set_idioma = '${def:locale}'
and
	smn_base.smn_servicio_traduccion.set_usuario = '${def:user}'
 	${filter}
order by 
	smn_base.smn_servicio_traduccion.smn_servicio_traduccion_id desc
