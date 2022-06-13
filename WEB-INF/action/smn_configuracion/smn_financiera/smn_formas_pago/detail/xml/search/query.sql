select
	smn_base.smn_franquicias.fra_descripcion,
	smn_base.smn_medio_pago.mpa_descripcion,
	case
	when smn_base.smn_formas_pago.fop_requiere_banco='S' then '${lbl:b_yes}'
	when smn_base.smn_formas_pago.fop_requiere_banco='N' then '${lbl:b_not}'
	end as fop_requiere_banco_combo,
	smn_base.smn_formas_pago.*
from
	smn_base.smn_formas_pago
	left outer join smn_base.smn_franquicias on smn_base.smn_franquicias.smn_franquicias_id = smn_base.smn_formas_pago.fop_franquicia
	inner join smn_base.smn_medio_pago on smn_base.smn_medio_pago.smn_medio_pago_id = smn_base.smn_formas_pago.fop_medio_pago
where
	smn_formas_pago_id = ${fld:id}
