select
		smn_base.smn_medio_pago.mpa_codigo
from
		smn_base.smn_medio_pago
where
		upper(smn_base.smn_medio_pago.mpa_codigo) = upper(${fld:mpa_codigo})
