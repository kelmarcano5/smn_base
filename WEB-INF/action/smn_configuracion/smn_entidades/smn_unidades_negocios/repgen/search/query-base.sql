select
	smn_base.smn_unidades_negocios.smn_unidades_negocios_id,
	${field}
from
	smn_base.smn_direccion,
	smn_base.smn_unidades_negocios
where
	smn_base.smn_unidades_negocios.smn_unidades_negocios_id is not null
and
	smn_base.smn_direccion.smn_direccion_id = smn_base.smn_unidades_negocios.uen_direccion
and
	smn_base.smn_unidades_negocios.uen_idioma = '${def:locale}'
and
	smn_base.smn_unidades_negocios.uen_usuario = '${def:user}'
	${filter}
order by
	smn_base.smn_unidades_negocios.smn_unidades_negocios_id desc
	
