select
	case
		when smn_base.smn_feriados.fer_laborable='S' then '${lbl:b_yes}'
		when smn_base.smn_feriados.fer_laborable='N' then '${lbl:b_not}'
	end as fer_laborable_combo,
	smn_base.smn_feriados.*
from 
	smn_base.smn_feriados
where
	smn_feriados_id = ${fld:id}
