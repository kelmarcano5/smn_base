UPDATE smn_base.smn_rel_zona_coordenadas SET
	smn_zona_id=${fld:smn_zona_id},
	smn_pais_rf=${fld:smn_pais_rf},
	smn_entidad_federal_rf=${fld:smn_entidad_federal_rf},
	smn_ciudad_rf=${fld:smn_ciudad_rf},
	smn_municipio_rf=${fld:smn_municipio_rf},
	smn_parroquia_rf=${fld:smn_parroquia_rf},
	rzc_latitud=${fld:rzc_latitud},
	rzc_longitud=${fld:rzc_longitud},
	rzc_idioma='${def:locale}',
	rzc_usuario='${def:user}',
	rzc_fecha_registro={d '${def:date}'},
	rzc_hora='${def:time}',
	rzc_coordenadas=${fld:rzc_coordenadas}
WHERE
	smn_rel_zona_coordenadas_id=${fld:id}

