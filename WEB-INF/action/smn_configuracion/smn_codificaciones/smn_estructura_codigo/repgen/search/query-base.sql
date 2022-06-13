select
		smn_base.smn_estructura_codigo.smn_estructura_codigo_id,
	${field}
from
	smn_base.smn_estructura_codigo
where
		smn_base.smn_estructura_codigo.smn_estructura_codigo_id is not null
	${filter}
	
	
