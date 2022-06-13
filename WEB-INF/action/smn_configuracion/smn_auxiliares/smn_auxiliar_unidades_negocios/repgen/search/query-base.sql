select
	smn_base.smn_auxiliar_unidades_negocios.smn_auxiliar_unidades_negocios_id,
	${field}
from
	smn_base.smn_direccion,
	smn_base.smn_auxiliar_unidades_negocios
where
	smn_base.smn_auxiliar_unidades_negocios.smn_auxiliar_unidades_negocios_id is not null
and
	smn_base.smn_direccion.smn_direccion_id = smn_base.smn_auxiliar_unidades_negocios.tun_direccion
and
	smn_base.smn_auxiliar_unidades_negocios.tun_idioma = '${def:locale}'
and
	smn_base.smn_auxiliar_unidades_negocios.tun_usuario = '${def:user}'
	${filter}
order by
	smn_base.smn_auxiliar_unidades_negocios.smn_auxiliar_unidades_negocios_id desc
	
