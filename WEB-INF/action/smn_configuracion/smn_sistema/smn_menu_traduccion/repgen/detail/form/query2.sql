select
	(select
		smn_seguridad.s_application.app_alias
	 from 
	 	smn_seguridad.s_application
	 where 
	 	smn_seguridad.s_application.app_id = ${fld:mnt_app_id_filter}) as mnt_aplicacion_filter,
	(select
		smn_seguridad.s_menu.title
	 from 
	 	smn_seguridad.s_menu
	 where 
	 	smn_seguridad.s_menu.menu_id = ${fld:mnt_menu_id_filter}) as mnt_menu_filter,
	smn_seguridad.s_application.app_alias,
	smn_seguridad.s_menu.title,
	case
		when ${fld:mnt_locale_filter}='es' then '${lbl:b_spanish}'
		when ${fld:mnt_locale_filter}='en' then '${lbl:b_english}'
		when ${fld:mnt_locale_filter}='fr' then '${lbl:b_french}'
		when ${fld:mnt_locale_filter}='de' then '${lbl:b_germany}'
		when ${fld:mnt_locale_filter}='pt' then '${lbl:b_portuguese}'
		when ${fld:mnt_locale_filter}='it' then '${lbl:b_italian}'
	end as mnt_idioma_filter,
	case
		when smn_base.smn_menu_traduccion.mnt_locale='es' then '${lbl:b_spanish}'
		when smn_base.smn_menu_traduccion.mnt_locale='en' then '${lbl:b_english}'
		when smn_base.smn_menu_traduccion.mnt_locale='fr' then '${lbl:b_french}'
		when smn_base.smn_menu_traduccion.mnt_locale='de' then '${lbl:b_germany}'
		when smn_base.smn_menu_traduccion.mnt_locale='pt' then '${lbl:b_portuguese}'
		when smn_base.smn_menu_traduccion.mnt_locale='it' then '${lbl:b_italian}'
	end as mnt_locale_combo,
	smn_base.smn_menu_traduccion.*
from
	smn_seguridad.s_application,
	smn_seguridad.s_menu, 
	smn_base.smn_menu_traduccion
where
	smn_base.smn_menu_traduccion.mnt_app_id=smn_seguridad.s_application.app_id
and
	smn_base.smn_menu_traduccion.mnt_menu_id=smn_seguridad.s_menu.menu_id
and
	smn_base.smn_menu_traduccion.smn_menu_traduccion_id = ${fld:id}
