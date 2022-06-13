select
	smn_base.smn_condicion_pago.cop_descripcion
from
	smn_base.smn_condicion_pago
where
	upper(trim(smn_base.smn_condicion_pago.cop_descripcion)) = upper(trim(${fld:cop_descripcion}))
