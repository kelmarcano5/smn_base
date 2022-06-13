select
		smn_base.smn_incrementos.smn_incrementos_id,
	${field}
from
	smn_base.smn_incrementos
where
		smn_base.smn_incrementos.smn_incrementos_id is not null
	${filter}
	
	
