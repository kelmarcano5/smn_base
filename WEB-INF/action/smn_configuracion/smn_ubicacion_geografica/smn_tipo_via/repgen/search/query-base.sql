select
	smn_base.smn_tipo_via.smn_tipo_via_id,
	${field}
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
	
