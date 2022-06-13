select
	case
		when smn_base.smn_formas_pago.fop_requiere_banco='S' then '${lbl:b_yes}'
		when smn_base.smn_formas_pago.fop_requiere_banco='N' then '${lbl:b_not}'
	end as fop_requiere_banco_combo,
	smn_base.smn_formas_pago.*
from 
	smn_base.smn_formas_pago
where
	smn_formas_pago_id = ${fld:id}
