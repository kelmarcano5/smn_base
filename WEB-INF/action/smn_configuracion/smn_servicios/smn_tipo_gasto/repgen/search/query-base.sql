select
		smn_base.smn_tipo_gasto.smn_tipo_gasto_id,
	${field}
from
	smn_base.smn_tipo_gasto
where
		smn_base.smn_tipo_gasto.smn_tipo_gasto_id is not null
	${filter}
	
	
