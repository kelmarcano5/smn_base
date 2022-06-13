select
		smn_base.smn_contactos.smn_contactos_id,
	${field}
from
	smn_base.smn_contactos
where
		smn_base.smn_contactos.smn_contactos_id is not null
	${filter}
	
	
