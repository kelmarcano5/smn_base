select	
	smn_base.smn_entidades_federales.efe_paises,
	smn_base.smn_entidades_federales.efe_codigo,
	smn_base.smn_entidades_federales.efe_nombre_corto,
	smn_base.smn_entidades_federales.efe_nombre_largo,
	smn_base.smn_entidades_federales.efe_fecha_registro,
	smn_base.smn_entidades_federales.smn_entidades_federales_id

from
	smn_base.smn_entidades_federales
where
	smn_entidades_federales_id is not null	
 	 	${filter}
order by 
	smn_entidades_federales_id