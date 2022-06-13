select
		smn_base.smn_marca.smn_marca_id,
	${field}
from
	smn_base.smn_marca
where
		smn_base.smn_marca.smn_marca_id is not null
	${filter}
	
	
