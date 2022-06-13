UPDATE smn_base.smn_entidades_federales SET
	efe_paises=${fld:efe_paises},
	efe_codigo=${fld:efe_codigo},
	efe_nombre_corto=${fld:efe_nombre_corto},
	efe_nombre_largo=${fld:efe_nombre_largo},
	efe_idioma='${def:locale}',
	efe_usuario='${def:user}',
	efe_fecha_registro={d '${def:date}'},
	efe_hora='${def:time}'

WHERE
	smn_entidades_federales_id=${fld:id}

