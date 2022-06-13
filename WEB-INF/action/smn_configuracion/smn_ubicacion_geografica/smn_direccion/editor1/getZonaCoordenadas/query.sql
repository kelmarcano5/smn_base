SELECT
	smn_base.smn_rel_zona_coordenadas.smn_pais_rf AS pais,
	smn_base.smn_rel_zona_coordenadas.smn_entidad_federal_rf as entidad,
	smn_base.smn_rel_zona_coordenadas.smn_ciudad_rf as ciudad,
	smn_base.smn_rel_zona_coordenadas.smn_municipio_rf as municipio,
	smn_base.smn_rel_zona_coordenadas.smn_parroquia_rf as parroquia,
	smn_base.smn_rel_zona_coordenadas.rzc_latitud as latitud,
	smn_base.smn_rel_zona_coordenadas.rzc_longitud as longitud,
	
	smn_base.smn_paises.pai_nombre_corto AS pais_descrip,
	smn_base.smn_entidades_federales.efe_nombre_corto as entidad_descrip,
	smn_base.smn_ciudades.ciu_nombre_corto as ciudad_descrip,
	smn_base.smn_municipios.mun_nombre_corto as municipio_descrip,
	smn_base.smn_parroquias.prr_nombre_corto as parroquia_descrip
FROM
	smn_base.smn_rel_zona_coordenadas
	inner join smn_base.smn_paises on smn_base.smn_paises.smn_paises_id = 	smn_base.smn_rel_zona_coordenadas.smn_pais_rf
	inner join smn_base.smn_entidades_federales on smn_base.smn_entidades_federales.smn_entidades_federales_id = smn_base.smn_rel_zona_coordenadas.smn_entidad_federal_rf
	inner join smn_base.smn_ciudades on smn_base.smn_ciudades.smn_ciudades_id = smn_base.smn_rel_zona_coordenadas.smn_ciudad_rf
	inner join smn_base.smn_municipios on smn_base.smn_municipios.smn_municipios_id = smn_base.smn_rel_zona_coordenadas.smn_municipio_rf
	inner join smn_base.smn_parroquias on smn_base.smn_parroquias.smn_parroquias_id = smn_base.smn_rel_zona_coordenadas.smn_parroquia_rf
WHERE
	smn_base.smn_rel_zona_coordenadas.smn_zona_id=${fld:id}