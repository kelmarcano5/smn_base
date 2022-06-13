select
	mct_contenido as content_type, 
	mct_archivo as filename
from smn_base.smn_modelos_contratos
where smn_modelos_contratos_id = ${fld:id}
