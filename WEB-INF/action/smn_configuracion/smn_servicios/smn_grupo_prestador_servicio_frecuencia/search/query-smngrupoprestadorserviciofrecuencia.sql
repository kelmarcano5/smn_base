select
	smn_base.smn_grupo_prestador_servicio_frecuencia.smn_grupo_prestador_servicio_frecuencia_id,
	smn_base.smn_grupos_prestadores.smn_grupos_prestadores_id,
	smn_base.smn_grupos_prestadores.gpp_codigo as gpp_codigo_pl0,
	smn_base.smn_prestadores_servicios.smn_prestadores_servicios_id,
	smn_base.smn_prestadores_servicios.prs_codigo as prs_codigo_pl1,
	smn_base.smn_servicios.smn_servicios_id,
	smn_base.smn_servicios.svc_codigo as svc_codigo_pl2,
	smn_base.smn_grupos_prestadores.gpp_codigo||' - '||smn_base.smn_grupos_prestadores.gpp_descripcion AS smn_grupos_prestadores_id,
	smn_base.smn_prestadores_servicios.prs_codigo||' - '||smn_base.smn_prestadores_servicios.prs_descripcion as smn_prestadores_servicios_id,
	smn_base.smn_servicios.svc_codigo ||' - '||smn_base.smn_servicios.svc_descripcion as smn_servicios_id,
	smn_base.smn_grupo_prestador_servicio_frecuencia.gps_frecuencia,
	smn_base.smn_grupo_prestador_servicio_frecuencia.gps_fecha_registro
	
from
	smn_base.smn_grupo_prestador_servicio_frecuencia
	LEFT outer join smn_base.smn_grupos_prestadores on smn_base.smn_grupos_prestadores.smn_grupos_prestadores_id = smn_base.smn_grupo_prestador_servicio_frecuencia.smn_grupos_prestadores_id
	LEFT outer join smn_base.smn_prestadores_servicios on smn_base.smn_prestadores_servicios.smn_prestadores_servicios_id = smn_base.smn_grupo_prestador_servicio_frecuencia.smn_prestadores_servicios_id
	LEFT outer join smn_base.smn_servicios on smn_base.smn_servicios.smn_servicios_id = smn_base.smn_grupo_prestador_servicio_frecuencia.smn_servicios_id

