select
	smn_base.smn_franquicias.fra_codigo,
	smn_base.smn_franquicias.fra_descripcion,
	smn_base.smn_franquicias.fra_fecha_registro,
	smn_base.smn_franquicias.smn_franquicias_id
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
