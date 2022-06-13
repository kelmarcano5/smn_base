select
		smn_base.smn_formas_pago.fop_descripcion
from
		smn_base.smn_formas_pago
where
		upper(smn_base.smn_formas_pago.fop_descripcion) = upper(${fld:fop_descripcion})
