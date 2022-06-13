select
	smn_base.smn_edificacion.edf_codigo,
	smn_base.smn_edificacion.edf_descripcion,
	smn_base.smn_edificacion.edf_fecha_registro,
	smn_base.smn_edificacion.smn_edificacion_id	
from
	smn_base.smn_edificacion
where
	smn_base.smn_edificacion.smn_edificacion_id is not null
and
   	smn_base.smn_edificacion.edf_idioma = '${def:locale}'
and
	smn_base.smn_edificacion.edf_usuario = '${def:user}'
	${filter}
order by
	smn_base.smn_edificacion.smn_edificacion_id desc
