select
		smn_base.smn_auxiliar.smn_auxiliar_id,
	${field}
from
	smn_base.smn_auxiliar
where
		smn_base.smn_auxiliar.smn_auxiliar_id is not null
	${filter}
	
	
