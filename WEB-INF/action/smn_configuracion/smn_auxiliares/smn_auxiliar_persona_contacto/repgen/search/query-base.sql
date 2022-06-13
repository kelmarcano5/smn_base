select
		smn_base.smn_auxiliar_persona_contacto.smn_auxiliar_persona_contacto_id,
	${field}
from
	smn_base.smn_auxiliar_persona_contacto
where
		smn_base.smn_auxiliar_persona_contacto.smn_auxiliar_persona_contacto_id is not null
	${filter}
	
	
