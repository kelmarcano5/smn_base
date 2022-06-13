select
	smn_base.smn_comunidades.cmn_nombre,
	smn_base.smn_corporaciones.crp_nombre,	
	smn_base.smn_paises.pai_nombre_corto,
	smn_base.smn_entidades_federales.efe_nombre_corto,
	smn_base.smn_ciudades.ciu_nombre_corto,
	smn_base.smn_municipios.mun_nombre_corto,
	smn_base.smn_parroquias.prr_nombre_corto,
	smn_base.smn_zonas_postales.zpo_codigo,
	smn_base.smn_tipo_via.tiv_descripcion,
	smn_base.smn_direccion.dir_tipo_via_nom,
	smn_base.smn_direccion.dir_tipo_via_num,
	smn_base.smn_edificacion.edf_descripcion,
	smn_base.smn_direccion.dir_edificacion_nom,
	smn_base.smn_direccion.dir_edificacion_num,
	smn_base.smn_tipo_localidad.til_descripcion,
	smn_base.smn_direccion.dir_tipo_localidad_nom,
	smn_base.smn_direccion.dir_edificacion_nom,
	smn_base.smn_direccion.dir_apartado_postal,
	smn_base.smn_direccion.dir_mapa_longitud,
	smn_base.smn_direccion.dir_mapa_latitud,	
	smn_base.smn_monedas.mon_nombre,
	smn_base.smn_sectores_economicos.sec_descripcion,
	smn_base.smn_unidades_negocios.uen_nombre,
	case
	when smn_base.smn_entidades.ent_maneja_sucursal='S' then '${lbl:b_yes}'
	when smn_base.smn_entidades.ent_maneja_sucursal='N' then '${lbl:b_not}'
	end as ent_maneja_sucursal_combo,
	case
	when smn_base.smn_entidades.ent_estatus='AC' then '${lbl:b_active}'
	when smn_base.smn_entidades.ent_estatus='IN' then '${lbl:b_inactive}'
	end as ent_estatus_combo,
	smn_base.smn_tipo_contribuyente.tco_codigo ||' - '||smn_base.smn_tipo_contribuyente.tco_descripcion as smn_tipo_contribuyente_rf_combo,
	smn_base.smn_entidades.*
from
	smn_base.smn_entidades
	left outer join smn_base.smn_comunidades on smn_base.smn_comunidades.smn_comunidades_id = smn_base.smn_entidades.ent_comunidad
	left outer join smn_base.smn_corporaciones on smn_base.smn_corporaciones.smn_corporaciones_id = smn_base.smn_entidades.ent_corporacion
	inner join smn_base.smn_direccion on smn_base.smn_direccion.smn_direccion_id = smn_base.smn_entidades.ent_direccion
	inner join smn_base.smn_monedas on smn_base.smn_monedas.smn_monedas_id = smn_base.smn_entidades.ent_moneda
	left outer join smn_base.smn_sectores_economicos on smn_base.smn_sectores_economicos.smn_sectores_economicos_id = smn_base.smn_entidades.ent_sector_economico
	left outer join smn_base.smn_unidades_negocios on smn_base.smn_unidades_negocios.smn_unidades_negocios_id = smn_base.smn_entidades.ent_unidad_negocio
	inner join smn_base.smn_paises on smn_base.smn_paises.smn_paises_id = smn_base.smn_direccion.dir_pais 
	inner join smn_base.smn_entidades_federales on smn_base.smn_entidades_federales.smn_entidades_federales_id = smn_base.smn_direccion.dir_entidad_federal 
	inner join smn_base.smn_ciudades on smn_base.smn_ciudades.smn_ciudades_id = smn_base.smn_direccion.dir_ciudad 
	inner join smn_base.smn_municipios on smn_base.smn_municipios.smn_municipios_id = smn_base.smn_direccion.dir_municipio
	inner join smn_base.smn_parroquias on smn_base.smn_parroquias.smn_parroquias_id = smn_base.smn_direccion.dir_parroquia
	inner join smn_base.smn_zonas_postales on smn_base.smn_zonas_postales.smn_zonas_postales_id = smn_base.smn_direccion.dir_zona_postal
	inner join smn_base.smn_tipo_via on smn_base.smn_tipo_via.smn_tipo_via_id = smn_base.smn_direccion.dir_tipo_via 
	inner join smn_base.smn_edificacion on smn_base.smn_edificacion.smn_edificacion_id = smn_base.smn_direccion.dir_edificacion 
	inner join smn_base.smn_tipo_localidad on smn_base.smn_tipo_localidad.smn_tipo_localidad_id = smn_base.smn_direccion.dir_tipo_localidad 
	inner join smn_base.smn_tipo_contribuyente on smn_base.smn_tipo_contribuyente.smn_tipo_contribuyente_id = smn_base.smn_entidades.smn_tipo_contribuyente_rf
where
	smn_base.smn_entidades.smn_entidades_id = ${fld:id}
