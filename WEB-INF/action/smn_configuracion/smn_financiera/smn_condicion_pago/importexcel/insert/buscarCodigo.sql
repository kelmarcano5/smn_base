select
	smn_base.smn_condicion_pago.cop_codigo
from
	smn_base.smn_condicion_pago
where
	upper(trim(smn_base.smn_condicion_pago.cop_codigo)) = upper(trim(${fld:cop_codigo}))
