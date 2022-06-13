UPDATE smn_base.smn_parroquias SET
	prr_municipios=${fld:prr_municipios},
	prr_codigo=${fld:prr_codigo},
	prr_nombre_corto=${fld:prr_nombre_corto},
	prr_nombre_largo=${fld:prr_nombre_largo},
	prr_idioma='${def:locale}',
	prr_usuario='${def:user}'
WHERE
	smn_base.smn_parroquias.smn_parroquias_id=${fld:id}

