select
	smn_base.smn_comunidades.smn_comunidades_id,
	${field}
from
	smn_base.smn_comunidades
	left outer join smn_base.smn_unidades_negocios on smn_base.smn_unidades_negocios.smn_unidades_negocios_id = smn_base.smn_comunidades.cmn_unidad_negocio
where
	smn_base.smn_comunidades.smn_comunidades_id is not null
and
	smn_base.smn_comunidades.cmn_idioma = '${def:locale}'
and
	smn_base.smn_comunidades.cmn_usuario = '${def:user}'
	${filter}
order by
	smn_base.smn_comunidades.smn_comunidades_id desc
	
	
