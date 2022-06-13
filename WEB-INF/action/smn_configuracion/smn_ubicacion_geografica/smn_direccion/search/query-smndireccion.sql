select
	smn_base.smn_ciudades.ciu_nombre_corto,
	smn_base.smn_edificacion.edf_descripcion,
	smn_base.smn_entidades_federales.efe_nombre_corto,
	smn_base.smn_municipios.mun_nombre_corto,
	smn_base.smn_paises.pai_nombre_corto,
	smn_base.smn_parroquias.prr_nombre_corto,
	smn_base.smn_tipo_localidad.til_descripcion,
	smn_base.smn_tipo_via.tiv_descripcion,
	smn_base.smn_zonas_postales.zpo_codigo,
	smn_base.smn_direccion.smn_direccion_id,
	smn_base.smn_direccion.dir_edificacion,
	smn_base.smn_direccion.dir_edificacion_nom,
	smn_base.smn_direccion.dir_edificacion_num,
	smn_base.smn_direccion.dir_tipo_localidad,
	smn_base.smn_direccion.dir_tipo_localidad_nom,
	smn_base.smn_direccion.dir_apartado_postal,
	smn_base.smn_direccion.dir_categoria,
	smn_base.smn_direccion.dir_mapa_longitud,
	smn_base.smn_direccion.dir_mapa_latitud,
	smn_base.smn_direccion.dir_codigo,
	smn_base.smn_direccion.dir_descripcion,
	smn_base.smn_paises.pai_nombre_corto as dir_pais,
	smn_base.smn_direccion.dir_entidad_federal,
	smn_base.smn_direccion.dir_ciudad,
	smn_base.smn_direccion.dir_municipio,
	smn_base.smn_direccion.dir_parroquia,
	smn_base.smn_direccion.dir_zona_postal,
	smn_base.smn_direccion.dir_tipo_via,
	smn_base.smn_direccion.dir_tipo_via_nom,
	smn_base.smn_direccion.dir_fecha_registro,
	smn_base.smn_direccion.dir_tipo_via_num
from
	smn_base.smn_direccion
	INNER JOIN smn_base.smn_ciudades on smn_base.smn_ciudades.smn_ciudades_id = smn_base.smn_direccion.dir_ciudad
	left outer JOIN smn_base.smn_edificacion on smn_base.smn_edificacion.smn_edificacion_id = smn_base.smn_direccion.dir_edificacion
	left outer JOIN smn_base.smn_entidades_federales on smn_base.smn_entidades_federales.smn_entidades_federales_id = smn_base.smn_direccion.dir_entidad_federal
	left outer JOIN smn_base.smn_municipios on smn_base.smn_municipios.smn_municipios_id = smn_base.smn_direccion.dir_municipio
	left outer JOIN smn_base.smn_paises on smn_base.smn_paises.smn_paises_id = smn_base.smn_direccion.dir_pais
	left outer JOIN smn_base.smn_parroquias on smn_base.smn_parroquias.smn_parroquias_id = smn_base.smn_direccion.dir_parroquia
	left outer JOIN smn_base.smn_tipo_localidad on smn_base.smn_tipo_localidad.smn_tipo_localidad_id = smn_base.smn_direccion.dir_tipo_localidad
	left outer JOIN smn_base.smn_tipo_via on smn_base.smn_tipo_via.smn_tipo_via_id = smn_base.smn_direccion.dir_tipo_via
	left outer join smn_base.smn_zonas_postales on smn_base.smn_zonas_postales.smn_zonas_postales_id = smn_base.smn_direccion.dir_zona_postal
order by
	smn_base.smn_direccion.smn_direccion_id desc
