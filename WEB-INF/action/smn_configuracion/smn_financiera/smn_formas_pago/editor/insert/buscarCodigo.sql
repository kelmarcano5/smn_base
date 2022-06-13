select
		smn_base.smn_formas_pago.fop_codigo
from
		smn_base.smn_formas_pago
where
		upper(smn_base.smn_formas_pago.fop_codigo) = upper(${fld:fop_codigo})
