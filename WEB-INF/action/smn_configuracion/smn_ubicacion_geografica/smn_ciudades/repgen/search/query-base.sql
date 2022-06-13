select
	smn_base.smn_ciudades.smn_ciudades_id,
	${field}
from
	smn_base.smn_entidades_federales,
	smn_base.smn_ciudades
where
	smn_base.smn_ciudades.smn_ciudades_id is not null
and
	smn_base.smn_entidades_federales.smn_entidades_federales_id = smn_base.smn_ciudades.ciu_entidades_federales 
and
   	smn_base.smn_ciudades.ciu_idioma = '${def:locale}'
and
	smn_base.smn_ciudades.ciu_usuario = '${def:user}'
	${filter}
order by
	smn_base.smn_ciudades.smn_ciudades_id desc	
	
