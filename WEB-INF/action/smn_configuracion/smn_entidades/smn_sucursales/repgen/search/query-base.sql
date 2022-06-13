select
	smn_base.smn_sucursales.smn_sucursales_id,
	${field}
from
	smn_base.smn_sucursales
	inner join smn_base.smn_direccion on smn_base.smn_direccion.smn_direccion_id = smn_base.smn_sucursales.suc_direccion
	inner join smn_base.smn_entidades on smn_base.smn_entidades.smn_entidades_id = smn_base.smn_sucursales.suc_empresa
	left outer join smn_base.smn_unidades_negocios on smn_base.smn_unidades_negocios.smn_unidades_negocios_id = smn_base.smn_sucursales.suc_unidad_negocio
where
	smn_base.smn_sucursales.smn_sucursales_id is not null
and
	smn_base.smn_sucursales.suc_idioma = '${def:locale}'
and
	smn_base.smn_sucursales.suc_usuario = '${def:user}'
	${filter}
order by
	smn_base.smn_sucursales.smn_sucursales_id desc
	
	
