select
		smn_base.smn_diccionario.smn_diccionario_id,
	${field}
from
	smn_base.smn_diccionario
where
		smn_base.smn_diccionario.smn_diccionario_id is not null
	${filter}
	
	
