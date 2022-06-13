select
		smn_base.smn_descuentos_retenciones.dyr_descripcion
from
		smn_base.smn_descuentos_retenciones
where
		upper(smn_base.smn_descuentos_retenciones.dyr_descripcion) = upper(${fld:dyr_descripcion})
