select
		smn_base.smn_baremos.smn_baremos_id,
	${field}
from
	smn_base.smn_baremos
where
		smn_base.smn_baremos.smn_baremos_id is not null
	${filter}
	
	
