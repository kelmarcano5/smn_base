select
	case
		when smn_base.smn_formas_pago.fop_requiere_banco='S' then '${lbl:b_yes}'
		when smn_base.smn_formas_pago.fop_requiere_banco='N' then '${lbl:b_not}'
	end as fop_requiere_banco_combo,
	smn_base.smn_formas_pago.fop_codigo,
	smn_base.smn_formas_pago.fop_descripcion,
	smn_base.smn_formas_pago.fop_medio_pago,
	smn_base.smn_formas_pago.fop_requiere_banco,
	smn_base.smn_formas_pago.fop_franquicia,
	smn_base.smn_formas_pago.fop_fecha_registro

from 
	smn_base.smn_formas_pago
