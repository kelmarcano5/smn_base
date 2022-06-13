UPDATE smn_base.smn_sectores_economicos SET
	sec_codigo=${fld:sec_codigo},
	sec_descripcion=${fld:sec_descripcion},
	sec_idioma='${def:locale}',
	sec_usuario='${def:user}'
WHERE
	smn_base.smn_sectores_economicos.smn_sectores_economicos_id=${fld:id}

