select	
	smn_base.smn_tipo_localidad.til_codigo,
	smn_base.smn_tipo_localidad.til_descripcion,
	smn_base.smn_tipo_localidad.til_fecha_registro,
	smn_base.smn_tipo_localidad.smn_tipo_localidad_id
from
	smn_base.smn_tipo_localidad
where
	smn_base.smn_tipo_localidad.smn_tipo_localidad_id is not null	
and
	smn_base.smn_tipo_localidad.til_idioma = '${def:locale}'
and
	smn_base.smn_tipo_localidad.til_usuario = '${def:user}'
 	${filter}
order by 
	smn_base.smn_tipo_localidad.smn_tipo_localidad_id desc
