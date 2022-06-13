UPDATE smn_base.smn_parentezco SET
	ptz_codigo=${fld:ptz_codigo},
	ptz_descripcion=${fld:ptz_descripcion},
	ptz_idioma='${def:locale}',
	ptz_usuario='${def:user}'
WHERE
	smn_base.smn_parentezco.smn_parentezco_id=${fld:id}

