select
	smn_base.smn_tipo_via.smn_tipo_via_id,
	smn_base.smn_tipo_via.tiv_codigo,
	smn_base.smn_tipo_via.tiv_descripcion,
	smn_base.smn_tipo_via.tiv_fecha_registro
from 
	smn_base.smn_tipo_via
where
   	smn_base.smn_tipo_via.tiv_idioma = '${def:locale}'
order by 
	smn_base.smn_tipo_via.smn_tipo_via_id desc
