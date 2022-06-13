select
		smn_base.smn_activo_fijo.smn_afijo_id,
	${field}
from
	smn_base.smn_activo_fijo
where
		smn_base.smn_activo_fijo.smn_afijo_id is not null
	${filter}
	
	
