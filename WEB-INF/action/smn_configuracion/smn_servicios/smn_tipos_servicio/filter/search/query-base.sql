select
	smn_base.smn_tipos_servicios.tsr_codigo,
	smn_base.smn_tipos_servicios.tsr_descripcion,
	smn_base.smn_tipos_servicios.tsr_fecha_registro,
			smn_base.smn_tipos_servicios.tsr_servicio_afiliacion,
	smn_base.smn_tipos_servicios.smn_tipos_servicios_id
from
	smn_base.smn_tipos_servicios
where
	smn_base.smn_tipos_servicios.smn_tipos_servicios_id is not null
and
	smn_base.smn_tipos_servicios.tsr_idioma = '${def:locale}'
and
	smn_base.smn_tipos_servicios.tsr_usuario = '${def:user}'
	${filter}
order by
	smn_base.smn_tipos_servicios.smn_tipos_servicios_id desc
