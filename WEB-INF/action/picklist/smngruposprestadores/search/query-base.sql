select	
	smn_base.smn_grupos_prestadores.*
from
	smn_base.smn_grupos_prestadores 
where
	smn_grupos_prestadores_id is not null
	${filter}