select
		smn_base.smn_tipo_contactos.smn_tipo_contactos_id,
	${field}
from
	smn_base.smn_tipo_contactos
where
		smn_base.smn_tipo_contactos.smn_tipo_contactos_id is not null
	${filter}
	
	
