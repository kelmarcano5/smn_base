select
	case
		when smn_base.smn_afiliaciones.afc_es_titular='S' then '${lbl:b_yes}'
		when smn_base.smn_afiliaciones.afc_es_titular='N' then '${lbl:b_not}'
	end as afc_es_titular_combo,
	smn_base.smn_afiliaciones.*
from 
	smn_base.smn_afiliaciones
where
	smn_afiliaciones_id = ${fld:id}
