select	
	smn_base.smn_tipo_via.tiv_codigo,
	smn_base.smn_tipo_via.tiv_descripcion,
	smn_base.smn_tipo_via.tiv_fecha_registro,
	smn_base.smn_tipo_via.smn_tipo_via_id
from
	smn_base.smn_tipo_via
where
	smn_base.smn_tipo_via.smn_tipo_via_id is not null	
and
	smn_base.smn_tipo_via.tiv_idioma = '${def:locale}'
and
	smn_base.smn_tipo_via.tiv_usuario = '${def:user}'
 	${filter}
order by 
	smn_base.smn_tipo_via.smn_tipo_via_id desc
