select
		smn_base.smn_titulo.smn_titulo_id,
	${field}
from
	smn_base.smn_titulo
where
		smn_base.smn_titulo.smn_titulo_id is not null
	${filter}
	
	
