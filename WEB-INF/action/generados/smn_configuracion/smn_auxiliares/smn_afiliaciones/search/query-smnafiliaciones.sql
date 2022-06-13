select
	case
		when smn_base.smn_afiliaciones.afc_es_titular='S' then '${lbl:b_yes}'
		when smn_base.smn_afiliaciones.afc_es_titular='N' then '${lbl:b_not}'
	end as afc_es_titular_combo,
	smn_base.smn_afiliaciones.afc_codigo,
	smn_base.smn_afiliaciones.afc_descripcion,
	smn_base.smn_afiliaciones.afc_afiliado,
	smn_base.smn_afiliaciones.afc_modulo,
	smn_base.smn_afiliaciones.afc_es_titular,
	smn_base.smn_afiliaciones.afc_parentezco,
	smn_base.smn_afiliaciones.afc_fecha_registro
from 
	smn_base.smn_afiliaciones
order by 
	smn_base.smn_afiliaciones.smn_afiliaciones_id desc