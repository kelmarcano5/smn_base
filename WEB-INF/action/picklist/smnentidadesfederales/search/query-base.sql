select	
	smn_base.smn_entidades_federales.*
from
	smn_base.smn_entidades_federales 
where
	smn_entidades_federales_id is not null
	${filter}