select
	smn_base.smn_tipo_localidad.smn_tipo_localidad_id,
	${field}
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
	