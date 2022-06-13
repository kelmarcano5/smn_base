UPDATE smn_base.smn_comunidades SET
	cmn_codigo=${fld:cmn_codigo},
	cmn_nombre=${fld:cmn_nombre},
	cmn_unidad_negocio=${fld:cmn_unidad_negocio},
	cmn_idioma='${def:locale}',
	cmn_usuario='${def:user}'
WHERE
	smn_base.smn_comunidades.smn_comunidades_id=${fld:id}

