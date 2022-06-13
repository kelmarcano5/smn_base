select
		smn_base.smn_descuento.dct_nombre
from
		smn_base.smn_descuento
where
		upper(smn_base.smn_descuento.dct_nombre) = upper(${fld:dct_nombre})
