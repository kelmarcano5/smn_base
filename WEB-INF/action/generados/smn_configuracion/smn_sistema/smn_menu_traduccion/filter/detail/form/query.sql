select
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
	smn_base.smn_menu_traduccion
where
	smn_menu_traduccion_id = ${fld:id}
