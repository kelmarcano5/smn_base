select
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
	smn_base.smn_servicio_traduccion
where
	smn_servicio_traduccion_id = ${fld:id}
