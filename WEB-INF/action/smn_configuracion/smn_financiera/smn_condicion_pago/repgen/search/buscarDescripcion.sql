select
		smn_base.smn_condicion_pago.cop_descripcion
from
		smn_base.smn_condicion_pago
where
		upper(smn_base.smn_condicion_pago.cop_descripcion) = upper(${fld:cop_descripcion})
