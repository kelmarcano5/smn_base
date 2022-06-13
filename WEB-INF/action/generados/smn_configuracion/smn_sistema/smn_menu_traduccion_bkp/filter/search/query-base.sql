select	
	case
		when smn_base.smn_menu_traduccion.mnt_locale='es' then '${lbl:b_spanish}'
		when smn_base.smn_menu_traduccion.mnt_locale='en' then '${lbl:b_english}'
		when smn_base.smn_menu_traduccion.mnt_locale='fr' then '${lbl:b_french}'
		when smn_base.smn_menu_traduccion.mnt_locale='de' then '${lbl:b_germany}'
		when smn_base.smn_menu_traduccion.mnt_locale='pt' then '${lbl:b_portuguese}'
		when smn_base.smn_menu_traduccion.mnt_locale='it' then '${lbl:b_italian}'
	end as mnt_locale_combo,
	smn_base.smn_menu_traduccion.mnt_app_id,
	smn_base.smn_menu_traduccion.mnt_menu_id,
	smn_base.smn_menu_traduccion.mnt_title,
	smn_base.smn_menu_traduccion.mnt_locale,
	smn_base.smn_menu_traduccion.mnt_fecha_registro,
	smn_base.smn_menu_traduccion.smn_menu_traduccion_id

from
	smn_base.smn_menu_traduccion
where
	smn_menu_traduccion_id is not null	
 	 	${filter}
order by 
	smn_menu_traduccion_id