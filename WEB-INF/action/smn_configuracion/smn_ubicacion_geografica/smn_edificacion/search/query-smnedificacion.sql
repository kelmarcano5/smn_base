select
	smn_base.smn_edificacion.smn_edificacion_id,
	smn_base.smn_edificacion.edf_codigo,
	smn_base.smn_edificacion.edf_descripcion,
	smn_base.smn_edificacion.edf_fecha_registro
from
	smn_base.smn_edificacion
where
   	smn_base.smn_edificacion.edf_idioma = '${def:locale}'
order by
	smn_base.smn_edificacion.smn_edificacion_id desc