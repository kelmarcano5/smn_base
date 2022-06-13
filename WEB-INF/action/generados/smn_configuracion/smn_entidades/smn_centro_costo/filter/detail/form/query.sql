select
	case
		when smn_base.smn_centro_costo.cco_nivel='TI' then '${lbl:b_account_title}'
		when smn_base.smn_centro_costo.cco_nivel='DE' then '${lbl:b_account_detail}'
	end as cco_nivel_combo,
	smn_base.smn_centro_costo.*
from 
	smn_base.smn_centro_costo
where
	smn_centro_costo_id = ${fld:id}
