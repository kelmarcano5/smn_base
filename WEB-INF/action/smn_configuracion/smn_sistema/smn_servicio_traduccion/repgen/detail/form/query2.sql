select
	(select
		smn_seguridad.s_application.app_alias
	 from 
	 	smn_seguridad.s_application
	 where 
	 	smn_seguridad.s_application.app_id = ${fld:set_app_id_filter}) as app_alias_filter,
	(select
		smn_seguridad.s_menu.title
	 from 
	 	smn_seguridad.s_menu
	 where 
	 	smn_seguridad.s_menu.menu_id = ${fld:set_menu_id_filter}) as menu_filter,
	(select
		smn_seguridad.s_service.description
	 from 
	 	smn_seguridad.s_service
	 where 
	 	smn_seguridad.s_service.service_id = ${fld:set_servicio_id_filter}) as set_servicio_filter,
	smn_seguridad.s_application.app_alias,
	smn_seguridad.s_menu.title,
	smn_seguridad.s_service.description,
	case
		when ${fld:set_locale_filter}='es' then '${lbl:b_spanish}'
		when ${fld:set_locale_filter}='en' then '${lbl:b_english}'
		when ${fld:set_locale_filter}='fr' then '${lbl:b_french}'
		when ${fld:set_locale_filter}='de' then '${lbl:b_germany}'
		when ${fld:set_locale_filter}='pt' then '${lbl:b_portuguese}'
		when ${fld:set_locale_filter}='it' then '${lbl:b_italian}'
	end as idioma_filter,
	case
		when smn_base.smn_servicio_traduccion.set_locale='es' then '${lbl:b_spanish}'
		when smn_base.smn_servicio_traduccion.set_locale='en' then '${lbl:b_english}'
		when smn_base.smn_servicio_traduccion.set_locale='fr' then '${lbl:b_french}'
		when smn_base.smn_servicio_traduccion.set_locale='de' then '${lbl:b_germany}'
		when smn_base.smn_servicio_traduccion.set_locale='pt' then '${lbl:b_portuguese}'
		when smn_base.smn_servicio_traduccion.set_locale='it' then '${lbl:b_italian}'
	end as set_locale_combo,
	smn_base.smn_servicio_traduccion.*
from
	smn_seguridad.s_application,
	smn_seguridad.s_menu,
	smn_seguridad.s_service, 
	smn_base.smn_servicio_traduccion
where
	smn_base.smn_servicio_traduccion.set_app_id=smn_seguridad.s_application.app_id
and
	smn_base.smn_servicio_traduccion.set_menu_id=smn_seguridad.s_menu.menu_id
and
	smn_base.smn_servicio_traduccion.set_servicio_id=smn_seguridad.s_service.service_id
and
	smn_base.smn_servicio_traduccion.smn_servicio_traduccion_id = ${fld:id}
