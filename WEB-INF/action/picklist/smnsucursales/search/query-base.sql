select	
	smn_base.smn_sucursales.*
from
	smn_base.smn_sucursales 
where
	smn_sucursales_id is not null
	${filter}