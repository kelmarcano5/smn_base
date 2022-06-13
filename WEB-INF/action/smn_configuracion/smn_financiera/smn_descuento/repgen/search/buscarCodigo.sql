select
		smn_base.smn_descuento.dct_codigo
from
		smn_base.smn_descuento
where
		upper(smn_base.smn_descuento.dct_codigo) = upper(${fld:dct_codigo})
