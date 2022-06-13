select
		smn_base.smn_descuentos_retenciones.dyr_apli_cant_precio
from
		smn_base.smn_descuentos_retenciones
where
		upper(smn_base.smn_descuentos_retenciones.dyr_apli_cant_precio) = upper(${fld:item})