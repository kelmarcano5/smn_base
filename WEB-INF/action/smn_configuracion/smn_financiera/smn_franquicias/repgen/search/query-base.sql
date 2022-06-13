select
	smn_base.smn_franquicias.smn_franquicias_id,
	${field}
from
	smn_base.smn_franquicias
where
	smn_base.smn_franquicias.smn_franquicias_id is not null
and
	smn_base.smn_franquicias.fra_idioma = '${def:locale}'
and
	smn_base.smn_franquicias.fra_usuario = '${def:user}'
	${filter}
order by
	smn_base.smn_franquicias.smn_franquicias_id desc
	
