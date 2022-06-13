select
	case
		when smn_base.smn_auxiliar_centro_costo.tco_tipo_cco='SR' then '${lbl:b_profitable}'
		when smn_base.smn_auxiliar_centro_costo.tco_tipo_cco='SE' then '${lbl:b_services}'
		when smn_base.smn_auxiliar_centro_costo.tco_tipo_cco='SP' then '${lbl:b_support}'
		when smn_base.smn_auxiliar_centro_costo.tco_tipo_cco='DG' then '${lblb_distribution}'
	end as tco_tipo_cco_combo,
	smn_base.smn_auxiliar_centro_costo.*
from 
	smn_base.smn_auxiliar_centro_costo
where
	smn_auxiliar_centro_costo_id = ${fld:id}
