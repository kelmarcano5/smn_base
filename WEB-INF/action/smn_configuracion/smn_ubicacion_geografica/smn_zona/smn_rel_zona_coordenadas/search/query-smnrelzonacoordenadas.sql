select
		smn_base.smn_rel_zona_coordenadas.smn_rel_zona_coordenadas_id,
	smn_base.smn_zona.zon_estatus as zon_estatus_pl0,
	smn_base.smn_zona.zon_descripcion as smn_zona_id,
	smn_base.smn_paises.pai_nombre_corto as smn_pais_rf,
	smn_base.smn_entidades_federales.efe_nombre_corto as smn_entidad_federal_rf,
	smn_base.smn_ciudades.ciu_nombre_corto as smn_ciudad_rf,
	smn_base.smn_municipios.mun_nombre_corto as smn_municipio_rf,
	smn_base.smn_parroquias.prr_nombre_corto as smn_parroquia_rf,
	smn_base.smn_rel_zona_coordenadas.rzc_latitud,
	smn_base.smn_rel_zona_coordenadas.rzc_longitud,
	smn_base.smn_rel_zona_coordenadas.rzc_fecha_registro
	
from
	smn_base.smn_rel_zona_coordenadas
	inner join smn_base.smn_zona on smn_base.smn_zona.smn_zona_id = smn_base.smn_rel_zona_coordenadas.smn_zona_id
	inner join smn_base.smn_paises on smn_base.smn_paises.smn_paises_id = smn_base.smn_rel_zona_coordenadas.smn_pais_rf
	inner join smn_base.smn_entidades_federales on smn_base.smn_entidades_federales.smn_entidades_federales_id = smn_base.smn_rel_zona_coordenadas.smn_entidad_federal_rf
	inner join smn_base.smn_ciudades on smn_base.smn_ciudades.smn_ciudades_id = smn_base.smn_rel_zona_coordenadas.smn_ciudad_rf
	inner join smn_base.smn_municipios on smn_base.smn_municipios.smn_municipios_id = smn_base.smn_rel_zona_coordenadas.smn_municipio_rf
	inner join smn_base.smn_parroquias on smn_base.smn_parroquias.smn_parroquias_id = smn_base.smn_rel_zona_coordenadas.smn_parroquia_rf
where
	smn_base.smn_rel_zona_coordenadas.smn_zona_id=${fld:id}
