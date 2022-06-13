select
	case
		when smn_base.smn_medio_pago.mpa_efectivo='S' then '${lbl:b_yes}'
		when smn_base.smn_medio_pago.mpa_efectivo='N' then '${lbl:b_not}'
	end as mpa_efectivo_combo,
	smn_base.smn_medio_pago.*
from 
	smn_base.smn_medio_pago
where
	smn_medio_pago_id = ${fld:id}
