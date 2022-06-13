select
		smn_base.smn_grupo_prestador_servicio_frecuencia.smn_grupo_prestador_servicio_frecuencia_id,
	${field}
from
	smn_base.smn_grupo_prestador_servicio_frecuencia
where
		smn_base.smn_grupo_prestador_servicio_frecuencia.smn_grupo_prestador_servicio_frecuencia_id is not null
	${filter}
	
	
