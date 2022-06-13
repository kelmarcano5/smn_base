select
		smn_base.smn_descuentos_retenciones.dyr_codigo
from
		smn_base.smn_descuentos_retenciones
where
		upper(smn_base.smn_descuentos_retenciones.dyr_codigo) = upper(${fld:dyr_codigo})
