select	
	smn_base.smn_componentes.*
from
	smn_base.smn_componentes 
where
	smn_componentes_id is not null
	${filter}