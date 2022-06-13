select
		smn_base.smn_clasificacion_abc.smn_clasificacion_abc_id,
	${field}
from
	smn_base.smn_clasificacion_abc
where
		smn_base.smn_clasificacion_abc.smn_clasificacion_abc_id is not null
	${filter}
	
	
