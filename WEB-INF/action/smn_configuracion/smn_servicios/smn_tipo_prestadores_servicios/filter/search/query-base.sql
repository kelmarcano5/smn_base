select
	smn_base.smn_tipo_prestadores_servicios.tps_codigo,
	smn_base.smn_tipo_prestadores_servicios.tps_descripcion,
	smn_base.smn_tipo_prestadores_servicios.tps_fecha_registro,
		smn_base.smn_tipo_prestadores_servicios.smn_tipo_prestadores_servicios_id
	
from
	smn_base.smn_tipo_prestadores_servicios
where
	smn_tipo_prestadores_servicios_id is not null
	${filter}
order by
		smn_tipo_prestadores_servicios_id
