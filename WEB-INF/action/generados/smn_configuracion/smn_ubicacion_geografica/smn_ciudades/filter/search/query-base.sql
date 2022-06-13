select	
	smn_base.smn_ciudades.ciu_entidades_federales,
	smn_base.smn_ciudades.ciu_codigo,
	smn_base.smn_ciudades.ciu_nombre_corto,
	smn_base.smn_ciudades.ciu_nombre_largo,
	smn_base.smn_ciudades.ciu_fecha_registro,
	smn_base.smn_ciudades.smn_ciudades_id

from
	smn_base.smn_ciudades
where
	smn_ciudades_id is not null	
 	 	${filter}
order by 
	smn_ciudades_id