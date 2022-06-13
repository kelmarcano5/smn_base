select	
	smn_base.smn_especialidad.*
from
	smn_base.smn_especialidad 
where
	smn_especialidad_id is not null
	${filter}