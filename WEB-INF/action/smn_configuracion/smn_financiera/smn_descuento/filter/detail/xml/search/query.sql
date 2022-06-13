select
	case
	when smn_base.smn_descuento.dct_aplica='C' then '${lbl:b_quantity}'
	when smn_base.smn_descuento.dct_aplica='P' then '${lbl:b_prize}'
	end as dct_aplica_combo,
	smn_base.smn_descuento.*
from
	smn_base.smn_descuento
where
	smn_descuento_id = ${fld:id}
