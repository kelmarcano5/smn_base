select
		smn_base.smn_plantilla_cabecera.smn_plantilla_cabecera_id,
	${field}
from
	smn_base.smn_plantilla_cabecera
where
		smn_base.smn_plantilla_cabecera.smn_plantilla_cabecera_id is not null
	${filter}
	
	
