select
		smn_base.smn_paso.smn_paso_id,
	${field}
from
	smn_base.smn_paso
where
		smn_base.smn_paso.smn_paso_id is not null
	${filter}
	
	
