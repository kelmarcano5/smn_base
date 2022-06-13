select
		smn_base.smn_vencimiento_cabecera.smn_vencimiento_cabecera_id,
	${field}
from
	smn_base.smn_vencimiento_cabecera
where
		smn_base.smn_vencimiento_cabecera.smn_vencimiento_cabecera_id is not null
	${filter}
	
	
