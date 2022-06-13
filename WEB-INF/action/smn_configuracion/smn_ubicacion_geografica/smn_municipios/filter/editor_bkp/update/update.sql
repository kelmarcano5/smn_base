UPDATE smn_base.smn_municipios SET
	mun_ciudades=${fld:mun_ciudades},
	mun_codigo=${fld:mun_codigo},
	mun_nombre_corto=${fld:mun_nombre_corto},
	mun_nombre_largo=${fld:mun_nombre_largo},
	mun_idioma='${def:locale}',
	mun_usuario='${def:user}'
WHERE
	smn_base.smn_municipios.smn_municipios_id=${fld:id}

