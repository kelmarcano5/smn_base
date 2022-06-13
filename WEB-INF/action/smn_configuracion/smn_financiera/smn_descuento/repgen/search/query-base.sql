select
		smn_base.smn_descuento.smn_descuento_id,
	${field}
from
	smn_base.smn_descuento
where
		smn_base.smn_descuento.smn_descuento_id is not null
	${filter}
	
	
