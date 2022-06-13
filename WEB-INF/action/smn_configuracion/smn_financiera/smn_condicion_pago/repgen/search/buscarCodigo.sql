select
		smn_base.smn_condicion_pago.cop_codigo
from
		smn_base.smn_condicion_pago
where
		upper(smn_base.smn_condicion_pago.cop_codigo) = upper(${fld:cop_codigo})
