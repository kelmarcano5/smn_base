UPDATE smn_base.smn_direccion SET
	dir_codigo=${fld:dir_codigo},
	dir_descripcion=CONCAT('ZONA POSTAL: ',${fld:dir_zona_postal},', LOCALIDAD: ',${fld:dir_tipo_localidad_name},', TIPO LOCALIDAD: ',${fld:dir_tipo_localidad_nom},', EDIFICIO: ',${fld:dir_edificacion_name},', NOMBRE EDIFICIO: ',${fld:dir_edificacion_nom},', VIA: ',${fld:dir_tipo_via_name},', TIPO VIA: ',${fld:dir_tipo_via_nom},', PARROQUIA: ',${fld:dir_parroquia_name},', MUNICIPIO: ',${fld:dir_municipio_name},', CIUDAD: ',${fld:dir_ciudad_name},', ENTIDAD FEDERAL: ',${fld:dir_entidad_federal_name},', PAIS: ',${fld:dir_pais_name}),
	dir_pais=${fld:dir_pais},
	dir_entidad_federal=${fld:dir_entidad_federal},
	dir_ciudad=${fld:dir_ciudad},
	dir_municipio=${fld:dir_municipio},
	dir_parroquia=${fld:dir_parroquia},
	dir_zona_postal=${fld:dir_zona_postal},
	dir_tipo_via=${fld:dir_tipo_via},
	dir_tipo_via_nom=${fld:dir_tipo_via_nom},
	dir_tipo_via_num=${fld:dir_tipo_via_num},
	dir_edificacion=${fld:dir_edificacion},
	dir_edificacion_nom=${fld:dir_edificacion_nom},
	dir_edificacion_num=${fld:dir_edificacion_num},
	dir_tipo_localidad=${fld:dir_tipo_localidad},
	dir_tipo_localidad_nom=${fld:dir_tipo_localidad_nom},
	dir_apartado_postal=${fld:dir_apartado_postal},
	dir_idioma='${def:locale}',
	dir_usuario='${def:user}'
WHERE
	smn_base.smn_direccion.smn_direccion_id=${fld:id}

