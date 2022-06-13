select	
	smn_base.smn_ciudades.*
from
	smn_base.smn_ciudades 
where
	smn_ciudades_id is not null
	${filter}