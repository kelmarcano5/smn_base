select
		smn_base.smn_medio_pago.mpa_descripcion
from
		smn_base.smn_medio_pago
where
		upper(smn_base.smn_medio_pago.mpa_descripcion) = upper(${fld:mpa_descripcion})
