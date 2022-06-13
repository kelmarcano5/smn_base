UPDATE smn_base.smn_edificacion SET
	edf_codigo=${fld:edf_codigo},
	edf_descripcion=${fld:edf_descripcion},
	edf_idioma='${def:locale}',
	edf_usuario='${def:user}'
WHERE
	smn_base.smn_edificacion.smn_edificacion_id=${fld:id}

