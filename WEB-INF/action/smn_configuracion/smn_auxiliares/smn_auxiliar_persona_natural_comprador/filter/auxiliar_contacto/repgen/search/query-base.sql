select
		smn_base.smn_auxiliar_contacto.smn_auxiliar_contacto_id,
	${field}
from
	smn_base.smn_auxiliar_contacto
where
		smn_base.smn_auxiliar_contacto.smn_auxiliar_contacto_id is not null
	${filter}
	
	
