select
	smn_base.smn_auxiliar_categoria.smn_auxiliar_categoria_id,
	${field}
from
	smn_base.smn_auxiliar_categoria
	inner join smn_base.smn_naturaleza_auxiliar on smn_base.smn_naturaleza_auxiliar.smn_naturaleza_auxiliar_id = smn_base.smn_auxiliar_categoria.aca_naturaleza_auxiliar 
	left outer join smn_base.smn_areas_servicios on smn_base.smn_areas_servicios.smn_areas_servicios_id = smn_base.smn_auxiliar_categoria.aca_area_servicio 
	left outer join smn_base.smn_entidades on smn_base.smn_entidades.smn_entidades_id = smn_base.smn_auxiliar_categoria.aca_empresa 
	left outer join smn_base.smn_sucursales on smn_base.smn_sucursales.smn_sucursales_id = smn_base.smn_auxiliar_categoria.aca_sucursal 
	left outer join smn_base.smn_unidades_negocios on smn_base.smn_unidades_negocios.smn_unidades_negocios_id = smn_base.smn_auxiliar_categoria.aca_unidad_negocio 
	left outer join smn_base.smn_unidades_servicios on smn_base.smn_unidades_servicios.smn_unidades_servicios_id = smn_base.smn_auxiliar_categoria.aca_unidad_servicio
where
	smn_base.smn_auxiliar_categoria.smn_auxiliar_categoria_id is not null
and
	smn_base.smn_auxiliar_categoria.aca_idioma = '${def:locale}'
and
	smn_base.smn_auxiliar_categoria.aca_usuario = '${def:user}'
	${filter}
order by
	smn_base.smn_auxiliar_categoria.smn_auxiliar_categoria_id desc 

	
