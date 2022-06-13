select
	smn_base.smn_corporaciones.smn_corporaciones_id,
	${field}
from
	smn_base.smn_corporaciones
	left outer join smn_base.smn_direccion on smn_base.smn_direccion.smn_direccion_id = smn_base.smn_corporaciones.crp_direccion
	inner join smn_base.smn_monedas on smn_base.smn_monedas.smn_monedas_id = smn_base.smn_corporaciones.crp_moneda
	left outer join smn_base.smn_unidades_negocios on smn_base.smn_unidades_negocios.smn_unidades_negocios_id = smn_base.smn_corporaciones.crp_unidad_negocio
where
	smn_base.smn_corporaciones.smn_corporaciones_id is not null
and
	smn_base.smn_corporaciones.crp_idioma = '${def:locale}'
and
	smn_base.smn_corporaciones.crp_usuario = '${def:user}'
	${filter}
order by
	smn_base.smn_corporaciones.smn_corporaciones_id desc
	
