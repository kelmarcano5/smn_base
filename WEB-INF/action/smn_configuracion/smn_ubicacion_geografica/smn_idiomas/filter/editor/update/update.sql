UPDATE smn_base.smn_idiomas SET
	idi_codigo=${fld:idi_codigo},
	idi_descripcion=${fld:idi_descripcion},
	idi_idioma='${def:locale}',
	idi_usuario='${def:user}'
WHERE
	smn_base.smn_idiomas.smn_idiomas_id=${fld:id}

