select
			smn_base.smn_tipo_localidad.smn_tipo_localidad_id,
	smn_base.smn_tipo_localidad.til_codigo,
	smn_base.smn_tipo_localidad.til_descripcion,
	smn_base.smn_tipo_localidad.til_fecha_registro
from 
	smn_base.smn_tipo_localidad
order by 
		smn_base.smn_tipo_localidad.smn_tipo_localidad_id
