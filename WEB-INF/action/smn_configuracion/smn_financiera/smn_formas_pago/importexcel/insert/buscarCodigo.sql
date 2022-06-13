select
	smn_base.smn_formas_pago.fop_codigo
from
	smn_base.smn_formas_pago
where
	upper(trim(smn_base.smn_formas_pago.fop_codigo)) = upper(trim(${fld:fop_codigo}))
