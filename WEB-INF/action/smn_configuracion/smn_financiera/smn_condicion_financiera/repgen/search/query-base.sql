select
		smn_base.smn_condicion_financiera.smn_condicion_financiera_id,
	${field}
from
	smn_base.smn_condicion_financiera
where
		smn_base.smn_condicion_financiera.smn_condicion_financiera_id is not null
	${filter}
	
	
