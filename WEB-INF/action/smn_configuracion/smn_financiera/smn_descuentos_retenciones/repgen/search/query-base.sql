select
		smn_base.smn_descuentos_retenciones.smn_descuentos_retenciones_id,
	${field}
from
	smn_base.smn_descuentos_retenciones
where
		smn_base.smn_descuentos_retenciones.smn_descuentos_retenciones_id is not null
	${filter}
	
	
