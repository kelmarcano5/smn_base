select
smn_base.smn_entidades_federales.efe_nombre_largo,
		smn_base.smn_ciudades.smn_ciudades_id,
	smn_base.smn_ciudades.ciu_entidades_federales,
	smn_base.smn_ciudades.ciu_codigo,
	smn_base.smn_ciudades.ciu_nombre_corto,
	smn_base.smn_ciudades.ciu_nombre_largo,
	smn_base.smn_ciudades.ciu_fecha_registro
	
from

	smn_base.smn_entidades_federales,
	smn_base.smn_ciudades
where
	smn_base.smn_entidades_federales.smn_entidades_federales_id = smn_base.smn_ciudades.ciu_entidades_federales
