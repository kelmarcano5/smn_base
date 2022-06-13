select
	(select
		smn_base.smn_entidades_federales.efe_nombre_largo
	 from 
	 	smn_base.smn_entidades_federales
	 where 
	 	smn_base.smn_entidades_federales.smn_entidades_federales_id = ${fld:ciu_entidades_federales_filter}) as ciu_entidades_federales_filter,
	smn_base.smn_ciudades.*
from
	smn_base.smn_entidades_federales,
	smn_base.smn_ciudades
where
	smn_base.smn_entidades_federales.smn_entidades_federales_id = smn_base.smn_ciudades.ciu_entidades_federales and
	smn_ciudades_id = ${fld:id}
