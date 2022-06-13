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
	${field}
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
	smn_base.smn_zonas_postales.smn_zonas_postales_id = smn_base.smn_direccion.dir_zona_postal and
		smn_base.smn_direccion.smn_direccion_id = ${fld:id}
	
