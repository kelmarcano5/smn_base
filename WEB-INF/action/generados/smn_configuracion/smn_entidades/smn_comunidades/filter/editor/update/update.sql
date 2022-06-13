UPDATE smn_base.smn_comunidades SET
	cmn_codigo=${fld:cmn_codigo},
	cmn_nombre=${fld:cmn_nombre},
	cmn_unidad_negocio=${fld:cmn_unidad_negocio},
	cmn_idioma='${def:locale}',
	cmn_usuario='${def:user}',
	cmn_fecha_registro={d '${def:date}'},
	cmn_hora='${def:time}'

WHERE
	smn_comunidades_id=${fld:id}

