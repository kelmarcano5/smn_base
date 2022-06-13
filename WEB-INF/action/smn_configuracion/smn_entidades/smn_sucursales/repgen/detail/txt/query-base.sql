select
	smn_base.smn_direccion.dir_descripcion,
	smn_base.smn_entidades.ent_descripcion_corta,
	smn_base.smn_unidades_negocios.uen_nombre,
	${field}
from
	smn_base.smn_sucursales
	inner join smn_base.smn_direccion on smn_base.smn_direccion.smn_direccion_id = smn_base.smn_sucursales.suc_direccion
	inner join smn_base.smn_entidades on smn_base.smn_entidades.smn_entidades_id = smn_base.smn_sucursales.suc_empresa
	left outer join smn_base.smn_unidades_negocios on smn_base.smn_unidades_negocios.smn_unidades_negocios_id = smn_base.smn_sucursales.suc_unidad_negocio
where
		smn_base.smn_sucursales.smn_sucursales_id = ${fld:id}
	
