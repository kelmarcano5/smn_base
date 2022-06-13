select	
	smn_base.smn_municipios.mun_ciudades,
	smn_base.smn_municipios.mun_codigo,
	smn_base.smn_municipios.mun_nombre_corto,
	smn_base.smn_municipios.mun_nombre_largo,
	smn_base.smn_municipios.mun_fecha_registro,
	smn_base.smn_municipios.smn_municipios_id

from
	smn_base.smn_municipios
where
	smn_municipios_id is not null	
 	 	${filter}
order by 
	smn_municipios_id