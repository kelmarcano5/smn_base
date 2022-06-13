select
		smn_base.smn_tipo_contribuyente.smn_tipo_contribuyente_id,
	${field}
from
	smn_base.smn_tipo_contribuyente
where
		smn_base.smn_tipo_contribuyente.smn_tipo_contribuyente_id is not null
	${filter}
	
	
