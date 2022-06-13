select
	(select smn_base.smn_entidades.ent_codigo || ' - ' || smn_base.smn_entidades.ent_descripcion_corta from  smn_base.smn_entidades  where smn_base.smn_entidades.smn_entidades_id is not null  and smn_base.smn_entidades.smn_entidades_id=smn_base.smn_panel_traduccion.pat_panel  order by smn_base.smn_entidades.ent_descripcion_corta ) as pat_panel_combo,
	case
		when smn_base.smn_panel_traduccion.pat_locale='es' then '${lbl:b_spanish}'
		when smn_base.smn_panel_traduccion.pat_locale='en' then '${lbl:b_english}'
		when smn_base.smn_panel_traduccion.pat_locale='fr' then '${lbl:b_french}'
		when smn_base.smn_panel_traduccion.pat_locale='de' then '${lbl:b_germany}'
		when smn_base.smn_panel_traduccion.pat_locale='pt' then '${lbl:b_portuguese}'
		when smn_base.smn_panel_traduccion.pat_locale='it' then '${lbl:b_italian}'
	end as pat_locale_combo,
	smn_base.smn_panel_traduccion.*
from 
	smn_base.smn_panel_traduccion
where
	smn_panel_traduccion_id = ${fld:id}
