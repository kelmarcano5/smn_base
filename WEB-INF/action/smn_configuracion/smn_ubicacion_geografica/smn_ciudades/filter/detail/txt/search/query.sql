select
smn_base.smn_entidades_federales.efe_nombre_largo,
	smn_base.smn_ciudades.*
from
	smn_base.smn_entidades_federales,
	smn_base.smn_ciudades
where
	smn_base.smn_entidades_federales.smn_entidades_federales_id = smn_base.smn_ciudades.ciu_entidades_federales and
	smn_ciudades_id = ${fld:id}
