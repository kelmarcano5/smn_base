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
	smn_base.smn_direccion.dir_pais,
	smn_base.smn_direccion.dir_entidad_federal,
	smn_base.smn_direccion.dir_ciudad,
	smn_base.smn_direccion.dir_municipio,
	smn_base.smn_direccion.dir_parroquia,
	smn_base.smn_direccion.dir_zona_postal,
	smn_base.smn_direccion.dir_tipo_via,
	smn_base.smn_direccion.dir_tipo_via_nom,
	smn_base.smn_direccion.dir_fecha_registro,
	smn_base.smn_direccion.dir_tipo_via_num,
		smn_base.smn_direccion.smn_direccion_id
from

	smn_base.smn_ciudades,
	smn_base.smn_edificacion,
	smn_base.smn_entidades_federales,
	smn_base.smn_municipios,
	smn_base.smn_paises,
	smn_base.smn_parroquias,
	smn_base.smn_tipo_localidad,
	smn_base.smn_tipo_via,
	smn_base.smn_zonas_postales,
	smn_base.smn_direccion
where
	smn_base.smn_ciudades.smn_ciudades_id = smn_base.smn_direccion.dir_ciudad and
	smn_base.smn_edificacion.smn_edificacion_id = smn_base.smn_direccion.dir_edificacion and
	smn_base.smn_entidades_federales.smn_entidades_federales_id = smn_base.smn_direccion.dir_entidad_federal and
	smn_base.smn_municipios.smn_municipios_id = smn_base.smn_direccion.dir_municipio and
	smn_base.smn_paises.smn_paises_id = smn_base.smn_direccion.dir_pais and
	smn_base.smn_parroquias.smn_parroquias_id = smn_base.smn_direccion.dir_parroquia and
	smn_base.smn_tipo_localidad.smn_tipo_localidad_id = smn_base.smn_direccion.dir_tipo_localidad and
	smn_base.smn_tipo_via.smn_tipo_via_id = smn_base.smn_direccion.dir_tipo_via and
	smn_base.smn_zonas_postales.smn_zonas_postales_id = smn_base.smn_direccion.dir_zona_postal
order by
			smn_base.smn_direccion.smn_direccion_id desc
