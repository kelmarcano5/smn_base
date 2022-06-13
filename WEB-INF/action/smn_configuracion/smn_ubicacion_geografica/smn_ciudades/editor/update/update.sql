UPDATE smn_base.smn_ciudades SET
	ciu_entidades_federales=${fld:ciu_entidades_federales},
	ciu_codigo=${fld:ciu_codigo},
	ciu_nombre_corto=${fld:ciu_nombre_corto},
	ciu_nombre_largo=${fld:ciu_nombre_largo},
	ciu_idioma='${def:locale}',
	ciu_usuario='${def:user}'
WHERE
	smn_base.smn_ciudades.smn_ciudades_id=${fld:id}

