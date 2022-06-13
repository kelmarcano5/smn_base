select
	case
		when smn_base.smn_panel_traduccion.pat_locale='es' then '${lbl:b_spanish}'
		when smn_base.smn_panel_traduccion.pat_locale='en' then '${lbl:b_english}'
		when smn_base.smn_panel_traduccion.pat_locale='fr' then '${lbl:b_french}'
		when smn_base.smn_panel_traduccion.pat_locale='de' then '${lbl:b_germany}'
		when smn_base.smn_panel_traduccion.pat_locale='pt' then '${lbl:b_portuguese}'
		when smn_base.smn_panel_traduccion.pat_locale='it' then '${lbl:b_italian}'
	end as pat_locale_combo,
	smn_base.smn_panel_traduccion.pat_panel,
	smn_base.smn_panel_traduccion.pat_description,
	smn_base.smn_panel_traduccion.pat_locale,
	smn_base.smn_panel_traduccion.pat_fecha_registro
from 
	smn_base.smn_panel_traduccion
order by 
	smn_base.smn_panel_traduccion.smn_panel_traduccion_id desc