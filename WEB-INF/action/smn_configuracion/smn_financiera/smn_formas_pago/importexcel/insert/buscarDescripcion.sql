select
	smn_base.smn_formas_pago.fop_descripcion
from
	smn_base.smn_formas_pago
where
	upper(trim(smn_base.smn_formas_pago.fop_descripcion)) = upper(trim(${fld:fop_descripcion}))
