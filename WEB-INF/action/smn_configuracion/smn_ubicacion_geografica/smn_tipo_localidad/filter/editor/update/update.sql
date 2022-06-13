UPDATE smn_base.smn_tipo_localidad SET
	til_codigo=${fld:til_codigo},
	til_descripcion=${fld:til_descripcion},
	til_idioma='${def:locale}',
	til_usuario='${def:user}'
WHERE
	smn_base.smn_tipo_localidad.smn_tipo_localidad_id=${fld:id}

